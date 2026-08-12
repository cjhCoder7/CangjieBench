#!/usr/bin/env bash

set -u
shopt -s nullglob

mkdir -p /logs/verifier
reward=0

if [ ! -f /workspace/main.cj ]; then
    echo "main.cj is missing"
else
    test_files=(/tests/test_*.cj)
    if [ "${#test_files[@]}" -eq 0 ]; then
        echo "no ClassEval test files found"
    else
        reward=1
        test_index=0
        for test_file in "${test_files[@]}"; do
            test_name=$(basename "$test_file" .cj)
            binary="/tmp/cangjiebench_${test_name}"
            compile_log="/tmp/cangjiebench_${test_name}_compile.log"
            run_log="/tmp/cangjiebench_${test_name}_run.log"
            rm -f "$binary"

            echo "[ClassEval] running ${test_name}"
            cjc /workspace/main.cj "$test_file" -o "$binary" \
                >"$compile_log" 2>&1
            compile_status=$?
            cat "$compile_log"

            if [ "$compile_status" -ne 0 ]; then
                reward=0
                test_index=$((test_index + 1))
                continue
            fi

            "$binary" >"$run_log" 2>&1
            run_status=$?
            cat "$run_log"
            if [ "$run_status" -ne 0 ]; then
                reward=0
            fi
            test_index=$((test_index + 1))
        done
    fi
fi

echo "$reward" > /logs/verifier/reward.txt
exit 0
