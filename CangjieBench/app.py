from flask import Flask, request, jsonify
import subprocess
import jsonlines
import time
import os

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
                "run_result": {
                    "status": None,
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
                "run_result": {
                    "status": None,
                    "return_code": None,
                    "stdout": None,
                    "stderr": None
                }
            })

    with open('main.cj', 'w') as f:
        f.write(solution + '\n' + test)
    try:
        result = subprocess.run("bash compile.sh", shell=True, capture_output=True, text=True, timeout=timeout)
    except subprocess.TimeoutExpired:
        return jsonify(
            {
                "passed": False,
                "message": "error: compile and run timeout",
                "run_result": {
                    "status": [False],
                    "return_code": [None],
                    "stdout": [None],
                    "stderr": [None]
                }
            })

    if "error" in result.stderr:
        return jsonify(
            {
                "passed": False,
                "message": f"error: {result.stderr}",
                "run_result": {
                    "status": [False],
                    "return_code": [result.returncode],
                    "stdout": [result.stdout],
                    "stderr": [result.stderr]
                }
            })

    if "fail" in result.stdout.lower():
        return jsonify(
            {
                "passed": False,
                "message": f"error: {result.stdout}",
                "run_result": {
                    "status": [False],
                    "return_code": [result.returncode],
                    "stdout": [result.stdout],
                    "stderr": [result.stderr]
                }
            })

    if os.path.exists("default.cjo"):
        os.remove("default.cjo")
    if os.path.exists("main"):
        os.remove("main")
    
    return jsonify(
            {
                "passed": True,
                "message": "",
                "run_result": {
                    "status": [True],
                    "return_code": [result.returncode],
                    "stdout": [result.stdout],
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
                "run_result": {
                    "status": None,
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
                "run_result": {
                    "status": None,
                    "return_code": None,
                    "stdout": None,
                    "stderr": None
                }
            })

    status = []
    return_code = []
    stdout = []
    stderr = []
    for test in tests:
        with open(f'main.cj', 'w') as f:
            f.write(solution + '\n' + test)
        
        try:
            result = subprocess.run(f"bash compile.sh", shell=True, capture_output=True, text=True, timeout=timeout)
        except subprocess.TimeoutExpired:
            status.append(False)
            return_code.append(None)
            stdout.append(None)
            stderr.append(None)
            continue

        if "error" in result.stderr:
            status.append(False)
            return_code.append(result.returncode)
            stdout.append(result.stdout)
            stderr.append(result.stderr)
            continue

        if "fail" in result.stdout.lower():
            status.append(False)
            return_code.append(result.returncode)
            stdout.append(result.stdout)
            stderr.append(result.stderr)
            continue
        
        status.append(True)
        return_code.append(result.returncode)
        stdout.append(result.stdout)
        stderr.append(None)
    
    if os.path.exists("default.cjo"):
        os.remove("default.cjo")
    if os.path.exists("main"):
        os.remove("main")

    return jsonify(
            {
                "passed": True if all(status) else False,
                "message": "",
                "run_result": {
                    "status": status,
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
                "output": None,
                "run_result": {
                    "status": None,
                    "return_code": None,
                    "stdout": None,
                    "stderr": None
                }
            })

    with open('main.cj', 'w') as f:
        f.write(solution)
    try:
        result = subprocess.run(f"bash compile.sh", shell=True, capture_output=True, text=True, timeout=timeout)
    except subprocess.TimeoutExpired:
        return jsonify(
            {
                "message": "error: compile and run timeout",
                "output": None,
                "run_result": {
                    "status": [False],
                    "return_code": [None],
                    "stdout": [None],
                    "stderr": [None]
                }
            })

    if "error" in result.stderr:
        return jsonify(
            {
                "message": f"error: {result.stderr}",
                "output": None,
                "run_result": {
                    "status": [False],
                    "return_code": [result.returncode],
                    "stdout": [result.stdout],
                    "stderr": [result.stderr]
                }
            })

    if os.path.exists("default.cjo"):
        os.remove("default.cjo")
    if os.path.exists("main"):
        os.remove("main")
    
    return jsonify(
            {
                "message": "",
                "output": result.stdout,
                "run_result": {
                    "status": [True],
                    "return_code": [result.returncode],
                    "stdout": [result.stdout],
                    "stderr": [None]
                }
            })

if __name__ == '__main__':
    port = int(os.environ.get('APP_PORT', 8080))
    app.run(host='0.0.0.0', port=port)
