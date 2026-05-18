from flask import Flask, request, jsonify
import subprocess
import jsonlines
import tempfile
import shutil
import os
import re

app = Flask(__name__)

raw_humaneval_datas_file = "HumanEval_Cangjie.jsonl"
raw_humaneval_datas = []
with jsonlines.open(raw_humaneval_datas_file, 'r') as reader:
    for data in reader:
        raw_humaneval_datas.append(data)

raw_classeval_datas_file = "ClassEval_Cangjie.jsonl"
raw_classeval_datas = []
with jsonlines.open(raw_classeval_datas_file, 'r') as reader:
    for data in reader:
        raw_classeval_datas.append(data)

ANSI_ESCAPE_RE = re.compile(r"\x1b\[[0-?]*[ -/]*[@-~]")


def clean_output(text):
    if text is None:
        return None
    return ANSI_ESCAPE_RE.sub("", text)


def compile_and_run(code, timeout):
    """Compile and run Cangjie code in an isolated temp directory."""
    tmpdir = tempfile.mkdtemp(prefix="cj_", dir="/tmp")
    try:
        src_path = os.path.join(tmpdir, "main.cj")
        with open(src_path, 'w') as f:
            f.write(code)
        result = subprocess.run(
            ["bash", "/workspace/compile.sh", tmpdir],
            capture_output=True, text=True, timeout=timeout
        )
        return result
    finally:
        shutil.rmtree(tmpdir, ignore_errors=True)


def judge_result(result):
    """Return (passed, failure_kind) for a compile+run subprocess result."""
    stderr = clean_output(result.stderr) or ""
    stdout = clean_output(result.stdout) or ""
    stderr_lower = stderr.lower()
    stdout_lower = stdout.lower()

    if "test failed" in stderr_lower or "test failed" in stdout_lower:
        return False, "test_failure"
    if "fail" in stdout_lower:
        return False, "test_failure"
    if "error" in stderr_lower:
        return False, "compile_error"
    if result.returncode != 0:
        if "an exception has occurred" in stderr_lower or "exception:" in stderr_lower:
            return False, "runtime_exception"
        return False, "nonzero_exit"
    return True, "passed"


@app.route('/evaluate_humaneval', methods=['POST'])
def evaluate_humaneval():
    answer = request.get_json()

    try:
        id = answer['id']
        timeout = answer['timeout']
        solution = answer['solution']
    except KeyError as e:
        return jsonify(
            {
                "passed": False,
                "message": f"error: {e}",
                "failure_kind": "bad_request",
                "run_result": {
                    "status": None,
                    "failure_kind": None,
                    "return_code": None,
                    "stdout": None,
                    "stderr": None
                }
            })

    find_flag = False
    for raw_data in raw_humaneval_datas:
        if raw_data['id'] == id:
            test = raw_data['test']
            find_flag = True
            break

    if not find_flag:
        return jsonify(
            {
                "passed": False,
                "message": f"error: {id} not found",
                "failure_kind": "missing_dataset_item",
                "run_result": {
                    "status": None,
                    "failure_kind": None,
                    "return_code": None,
                    "stdout": None,
                    "stderr": None
                }
            })

    try:
        result = compile_and_run(solution + '\n' + test, timeout)
    except subprocess.TimeoutExpired:
        return jsonify(
            {
                "passed": False,
                "message": "error: compile and run timeout",
                "failure_kind": "timeout",
                "run_result": {
                    "status": [False],
                    "failure_kind": ["timeout"],
                    "return_code": [None],
                    "stdout": [None],
                    "stderr": [None]
                }
            })

    passed, failure_kind = judge_result(result)
    if not passed:
        return jsonify(
            {
                "passed": False,
                "message": f"error: {clean_output(result.stderr) or clean_output(result.stdout)}",
                "failure_kind": failure_kind,
                "run_result": {
                    "status": [False],
                    "failure_kind": [failure_kind],
                    "return_code": [result.returncode],
                    "stdout": [clean_output(result.stdout)],
                    "stderr": [clean_output(result.stderr)]
                }
            })

    return jsonify(
            {
                "passed": True,
                "message": "",
                "failure_kind": "passed",
                "run_result": {
                    "status": [True],
                    "failure_kind": ["passed"],
                    "return_code": [result.returncode],
                    "stdout": [clean_output(result.stdout)],
                    "stderr": [None]
                }
            })

@app.route('/evaluate_classeval', methods=['POST'])
def evaluate_classeval():
    answer = request.get_json()

    try:
        id = answer['id']
        timeout = answer['timeout']
        solution = answer['solution']
    except KeyError as e:
        return jsonify(
            {
                "passed": False,
                "message": f"error: {e}",
                "failure_kind": "bad_request",
                "run_result": {
                    "status": None,
                    "failure_kind": None,
                    "return_code": None,
                    "stdout": None,
                    "stderr": None
                }
            })

    find_flag = False
    for raw_data in raw_classeval_datas:
        if raw_data['id'] == id:
            tests = raw_data['test']
            find_flag = True
            break

    if not find_flag:
        return jsonify(
            {
                "passed": False,
                "message": f"error: {id} not found",
                "failure_kind": "missing_dataset_item",
                "run_result": {
                    "status": None,
                    "failure_kind": None,
                    "return_code": None,
                    "stdout": None,
                    "stderr": None
                }
            })

    status = []
    failure_kind = []
    return_code = []
    stdout = []
    stderr = []
    for test in tests:
        try:
            result = compile_and_run(solution + '\n' + test, timeout)
        except subprocess.TimeoutExpired:
            status.append(False)
            failure_kind.append("timeout")
            return_code.append(None)
            stdout.append(None)
            stderr.append(None)
            continue

        passed, kind = judge_result(result)
        if not passed:
            status.append(False)
            failure_kind.append(kind)
            return_code.append(result.returncode)
            stdout.append(clean_output(result.stdout))
            stderr.append(clean_output(result.stderr))
            continue

        status.append(True)
        failure_kind.append("passed")
        return_code.append(result.returncode)
        stdout.append(clean_output(result.stdout))
        stderr.append(None)

    return jsonify(
            {
                "passed": True if all(status) else False,
                "message": "",
                "failure_kind": "passed" if all(status) else next((k for k in failure_kind if k != "passed"), "unknown"),
                "run_result": {
                    "status": status,
                    "failure_kind": failure_kind,
                    "return_code": return_code,
                    "stdout": stdout,
                    "stderr": stderr
                },
                "main_function_passed": True if status[-1] else False
            })

@app.route('/run_code', methods=['POST'])
def run_code():
    answer = request.get_json()

    try:
        timeout = answer['timeout']
        solution = answer['solution']
    except KeyError as e:
        return jsonify(
            {
                "message": f"error: {e}",
                "failure_kind": "bad_request",
                "output": None,
                "run_result": {
                    "status": None,
                    "failure_kind": None,
                    "return_code": None,
                    "stdout": None,
                    "stderr": None
                }
            })

    try:
        result = compile_and_run(solution, timeout)
    except subprocess.TimeoutExpired:
        return jsonify(
            {
                "message": "error: compile and run timeout",
                "failure_kind": "timeout",
                "output": None,
                "run_result": {
                    "status": [False],
                    "failure_kind": ["timeout"],
                    "return_code": [None],
                    "stdout": [None],
                    "stderr": [None]
                }
            })

    passed, failure_kind = judge_result(result)
    if not passed:
        return jsonify(
            {
                "message": f"error: {clean_output(result.stderr) or clean_output(result.stdout)}",
                "failure_kind": failure_kind,
                "output": None,
                "run_result": {
                    "status": [False],
                    "failure_kind": [failure_kind],
                    "return_code": [result.returncode],
                    "stdout": [clean_output(result.stdout)],
                    "stderr": [clean_output(result.stderr)]
                }
            })

    return jsonify(
            {
                "message": "",
                "failure_kind": "passed",
                "output": clean_output(result.stdout),
                "run_result": {
                    "status": [True],
                    "failure_kind": ["passed"],
                    "return_code": [result.returncode],
                    "stdout": [clean_output(result.stdout)],
                    "stderr": [None]
                }
            })

if __name__ == '__main__':
    port = int(os.environ.get('APP_PORT', 8080))
    app.run(host='0.0.0.0', port=port)
