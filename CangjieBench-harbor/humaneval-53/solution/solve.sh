#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.random.Random

func add(x: Int64, y: Int64): Int64 {
    /*
    Add two numbers x and y
    >>> add(2, 3)
    5
    >>> add(5, 7)
    12
    */
    return x + y
}
__CANGJIEBENCH_SOLUTION__
