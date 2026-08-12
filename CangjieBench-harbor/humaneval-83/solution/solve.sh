#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func starts_one_ends(n: Int64): Int64 {
    /*
    Given a positive integer n, return the count of the numbers of n-digit
    positive integers that start or end with 1.
    */
    if (n == 1) {
        return 1
    }
    var res = 18 * Int64(10.0 ** (n - 2))
    return res
}
__CANGJIEBENCH_SOLUTION__
