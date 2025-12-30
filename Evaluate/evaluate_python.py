import jsonlines
import json
import os
import argparse
from tqdm import tqdm
import tempfile
import subprocess
import ast

parser = argparse.ArgumentParser()

parser.add_argument("--input_file", type=str, required=True)
parser.add_argument("--dataset", type=str, required=True)

DATASET = ["HumanEval", "ClassEval"]

ORIGIN_DATASET = {
    "HumanEval": "data/HumanEval_Python.jsonl",
    "ClassEval": "data/ClassEval_Python.json"
}

TIMEOUT = 60

def run_humaneval_test(solution, test_code):
    """Run HumanEval-style test: solution + test in one script."""
    with tempfile.NamedTemporaryFile(mode='w', suffix='.py', delete=False) as tmp:
        tmp.write(solution + "\n" + test_code)
        tmp_path = tmp.name

    try:
        result = subprocess.run(
            ['python', tmp_path],
            capture_output=True,
            text=True,
            timeout=TIMEOUT
        )
        passed = (result.returncode == 0)
        return passed
    except subprocess.TimeoutExpired:
        return False
    finally:
        try:
            os.unlink(tmp_path)
        except OSError:
            pass

def run_classeval_test(task_id: str,
                       solution: str,
                       test_code: str,
                       test_classes: list[str]) -> tuple[bool, list[bool]]:
    """
    用 subprocess + unittest 命令行跑测试，超时强制杀。
    返回 (all_passed, [each_test_passed])
    """

    per_test_passed = []

    for test_class in test_classes:
        test_class_code = ""
        test_tree = ast.parse(test_code)
        
        for node in ast.walk(test_tree):
            if isinstance(node, ast.ClassDef) and node.name == test_class:
                test_class_code = ast.unparse(node)
                break

        if test_class_code == "":
            per_test_passed.append(False)
            print(f"[{task_id}] test_class {test_class} not found")
            continue
        
        code = f"import unittest\n\n{solution}\n\n{test_class_code}\n\n" \
            "if __name__ == '__main__':\n" \
            "    unittest.main()\n"

        with tempfile.NamedTemporaryFile(mode='w', suffix='.py', delete=False, encoding='utf-8') as f:
            f.write(code)
            tmp_path = f.name

        try:
            cmd = ['python', tmp_path]
            cp = subprocess.run(
                cmd,
                capture_output=True,
                text=True,
                timeout=TIMEOUT
            )
            passed = (cp.returncode == 0)
            per_test_passed.append(passed)

        except subprocess.TimeoutExpired:
            print(f"[{task_id}] timeout after {TIMEOUT}s")
            per_test_passed.append(False)

        except Exception as e:
            print(f"[{task_id}] subprocess error: {e}")
            per_test_passed.append(False)

        finally:
            try:
                os.unlink(tmp_path)
            except OSError:
                pass

    return all(per_test_passed), per_test_passed


if __name__ == "__main__":
    args = parser.parse_args()
    input_file = args.input_file
    dataset = args.dataset

    if dataset not in DATASET:
        raise ValueError(f"dataset must be in {DATASET}")
    
    if not os.path.exists(input_file):
        raise ValueError(f"input_file {input_file} does not exist")
    
    llm_name = input_file.split("_")[0]

    raw_data_inputs = []
    with jsonlines.open(input_file) as reader:
        for item in reader:
            raw_data_inputs.append(item)

    if dataset == "HumanEval":
        pass_count = 0

        origin_data = []
        with jsonlines.open(ORIGIN_DATASET[dataset]) as reader:
            for item in reader:
                origin_data.append(item)

        with tqdm(total=len(raw_data_inputs)) as pbar:
            for item in raw_data_inputs:
                id = item['id']
                solution = item['solution']
                # find origin data
                origin_item = None
                for origin in origin_data:
                    if origin['id'] == id:
                        origin_item = origin
                        break
                if origin_item == None:
                    pbar.update(1)
                    continue
                test = origin_item['test']

                passed = run_humaneval_test(solution, test)
                if passed:
                    pass_count += 1
                pbar.update(1)

        print(f"pass_count: {pass_count}")
        print(f"pass_rate: {pass_count / len(raw_data_inputs)}")

    elif dataset == "ClassEval":
        pass_count = 0
        pass_func_count = 0
        all_func_count = 0
        pass_main_func_count = 0
        all_main_func_count = 0

        with open(ORIGIN_DATASET[dataset], 'r', encoding='utf-8') as f:
            origin_data = json.load(f)

        origin_dict = {item['task_id']: item for item in origin_data}

        with tqdm(total=len(raw_data_inputs)) as pbar:
            for item in raw_data_inputs:
                task_id = item['id']
                solution = item['solution']

                if task_id not in origin_dict:
                    pbar.update(1)
                    continue

                origin_item = origin_dict[task_id]
                test_code = origin_item['test']
                test_classes = origin_item['test_classes']

                passed, per_test_passed = run_classeval_test(task_id, solution, test_code, test_classes)
                if passed:
                    pass_count += 1
                
                for passed in per_test_passed[:-1]:
                    if passed:
                        pass_func_count += 1
                    all_func_count += 1

                if per_test_passed[-1]:
                    pass_main_func_count += 1
                all_main_func_count += 1

                pbar.update(1)

        print(f"pass_count: {pass_count}")
        print(f"total_count: {len(raw_data_inputs)}")
        print(f"pass_rate: {pass_count / len(raw_data_inputs)}")
        print(f"pass_func_count: {pass_func_count}")
        print(f"all_func_count: {all_func_count}")
        print(f"pass_func_rate: {pass_func_count / all_func_count}")
        print(f"pass_main_func_count: {pass_main_func_count}")
        print(f"total_main_func_count: {all_main_func_count}")
        print(f"pass_main_func_rate: {pass_main_func_count / all_main_func_count}")
