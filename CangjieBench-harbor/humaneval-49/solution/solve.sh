#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func modp(n: Int64, p: Int64): Int64 {
    /*
    Return 2^n modulo p (be aware of numerics).
    >>> modp(3, 5)
    3
    >>> modp(1101, 101)
    2
    >>> modp(0, 101)
    1
    >>> modp(3, 11)
    8
    >>> modp(100, 101)
    1
    */
    var ret = 1
    for (i in 0..n) {
        ret = (2 * ret) % p
    }
    return ret
}
__CANGJIEBENCH_SOLUTION__
