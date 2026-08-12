#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.math.abs

func multiply(a: Int64, b: Int64): Int64 {
    /*
    Complete the function that takes two integers and returns 
    the product of their unit digits.
    Assume the input is always valid.
    Examples:
    multiply(148, 412) should return 16.
    multiply(19, 28) should return 72.
    multiply(2020, 1851) should return 0.
    multiply(14,-15) should return 20.
    */
    return abs(a % 10) * abs(b % 10)
}
__CANGJIEBENCH_SOLUTION__
