#!/usr/bin/env bash

set -u

mkdir -p /logs/verifier
reward=0

if [ ! -f /workspace/main.cj ]; then
    echo "main.cj is missing"
else
    compile_log=/tmp/cangjiebench_compile.log
    run_log=/tmp/cangjiebench_run.log

    cjc /workspace/main.cj /tests/test_cases.cj -o /tmp/cangjiebench_test \
        >"$compile_log" 2>&1
    compile_status=$?
    cat "$compile_log"

    if [ "$compile_status" -eq 0 ]; then
        /tmp/cangjiebench_test >"$run_log" 2>&1
        run_status=$?
        cat "$run_log"
        if [ "$run_status" -eq 0 ]; then
            reward=1
        fi
    fi
fi

echo "$reward" > /logs/verifier/reward.txt
exit 0
