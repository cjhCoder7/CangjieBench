import jsonlines
import os
import argparse
import requests
import threading
from concurrent.futures import ThreadPoolExecutor, as_completed
from tqdm import tqdm

parser = argparse.ArgumentParser()

parser.add_argument("--input_file", type=str, required=True)
parser.add_argument("--dataset", type=str, required=True)
parser.add_argument("--max_workers", type=int, default=4, help="Number of concurrent requests")

DATASET = ["HumanEval", "ClassEval"]

TIMEOUT = 20
URL = {
    "HumanEval": "http://172.17.0.1:8080/evaluate_humaneval",
    "ClassEval": "http://172.17.0.1:8080/evaluate_classeval"
}

if __name__ == "__main__":
    args = parser.parse_args()
    input_file = args.input_file
    dataset = args.dataset
    max_workers = args.max_workers

    if dataset not in DATASET:
        raise ValueError(f"dataset must be in {DATASET}")

    if not os.path.exists(input_file):
        raise ValueError(f"input_file {input_file} does not exist")

    llm_name = input_file.split("_")[0]

    raw_data_inputs = []
    with jsonlines.open(input_file) as reader:
        for item in reader:
            raw_data_inputs.append(item)

    pass_count = 0
    compile_error_count = 0

    all_function_count = 0
    success_function_count = 0
    main_function_count = 0
    success_main_function_count = 0

    lock = threading.Lock()

    def evaluate_item(item):
        data = {
            "id": item['id'],
            "timeout": TIMEOUT,
            "solution": item['solution']
        }
        try:
            response = requests.post(URL[dataset], json=data)
            output = response.json()
            return output
        except Exception as e:
            return {
                "passed": False,
                "message": f"request error: {e}",
                "run_result": {
                    "status": None,
                    "return_code": None,
                    "stdout": None,
                    "stderr": None
                }
            }

    with tqdm(total=len(raw_data_inputs)) as pbar:
        with ThreadPoolExecutor(max_workers=max_workers) as executor:
            futures = {executor.submit(evaluate_item, item): item for item in raw_data_inputs}
            for future in as_completed(futures):
                output = future.result()

                with lock:
                    if output['passed'] == True:
                        pass_count += 1

                    if output['run_result']['stderr'] != None:
                        for std in output['run_result']['stderr']:
                            if std == None:
                                continue
                            if "error" in std:
                                compile_error_count += 1
                                break

                    if output['run_result']['status'] != None:
                        for index,statu in enumerate(output['run_result']['status']):
                            if index == len(output['run_result']['status']) - 1:
                                main_function_count += 1
                                if statu != None and statu == True:
                                    success_main_function_count += 1
                                break
                            all_function_count += 1
                            if statu != None and statu == True:
                                success_function_count += 1

                pbar.update(1)

    print(f"pass_count: {pass_count}")
    print(f"compile_error_count: {compile_error_count}")
    print(f"compile_success_count: {len(raw_data_inputs) - compile_error_count}")
    print(f"pass_rate: {pass_count / len(raw_data_inputs)}")
    print(f"compile_error_rate: {compile_error_count / len(raw_data_inputs)}")
    print(f"compile_success_rate: {(len(raw_data_inputs) - compile_error_count) / len(raw_data_inputs)}")

    if dataset == "ClassEval":
        print(f"all_function_count: {all_function_count}")
        print(f"success_function_count: {success_function_count}")
        print(f"main_function_count: {main_function_count}")
        print(f"success_main_function_count: {success_main_function_count}")
        print(f"function_pass_rate: {success_function_count / all_function_count}")
        print(f"main_function_pass_rate: {success_main_function_count / main_function_count}")
