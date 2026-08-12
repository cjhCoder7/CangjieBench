#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func is_equal_to_sum_even(n: Int64): Bool {
    /*
    Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
    Example
    is_equal_to_sum_even(4) == false
    is_equal_to_sum_even(6) == false
    is_equal_to_sum_even(8) == true
    */
    return n%2 == 0 && n >= 8
}
__CANGJIEBENCH_SOLUTION__
