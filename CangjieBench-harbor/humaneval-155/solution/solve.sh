#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.math.abs
import std.convert.Parsable

func even_odd_count(num: Int64): (Int64, Int64) {
    /*
    Given an integer. return a tuple that has the number of even and odd digits respectively.

     Example:
        even_odd_count(-12) ==> (1, 1)
        even_odd_count(123) ==> (1, 2)
    */
    var even_count = 0
    var odd_count = 0
    for (i in abs(num).toString().toRuneArray()) {
        if (Int64.parse(i.toString()) % 2 == 0) {
            even_count += 1
        } else {
            odd_count += 1
        }
    }
    return (even_count, odd_count)
}
__CANGJIEBENCH_SOLUTION__
