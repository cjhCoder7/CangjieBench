#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func fizz_buzz(n: Int64): Int64 {
    /*
    Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
    >>> fizz_buzz(50)
    0
    >>> fizz_buzz(78)
    2
    >>> fizz_buzz(79)
    3
    */
    let ns = ArrayList<Int64>()
    for (i in 0..n) {
        if (i % 11 == 0 || i % 13 == 0) {
            ns.add(i)
        }
    }
    var s = ''
    for (i in ns) {
        s += i.toString()
    }
    var ans = 0
    for (c in s.toRuneArray()) {
        if (c == r'7') {
            ans += 1
        }
    }
    return ans
}
__CANGJIEBENCH_SOLUTION__
