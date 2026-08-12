#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func largest_divisor(n: Int64): Int64 {
    /*
    For a given number n, find the largest number that divides n evenly, smaller than n
    >>> largest_divisor(15)
    5
    */
    for (i in (n-1)..0 : -1) {
        if (n % i == 0) {
            return i
        }
    }
    return 1
}
__CANGJIEBENCH_SOLUTION__
