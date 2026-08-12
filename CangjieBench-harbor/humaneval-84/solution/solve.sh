#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.convert.Formattable

func solve(N: Int64): String {
    /*
    Given a positive integer N, return the total sum of its digits in binary.
    
    Example
        For N = 1000, the sum of digits will be 1 the output should be "1".
        For N = 150, the sum of digits will be 6 the output should be "110".
        For N = 147, the sum of digits will be 12 the output should be "1100".
    
    Variables:
        @N integer
             Constraints: 0 ≤ N ≤ 10000.
    Output:
         a string of binary number
    */
    var sum = 0
    let N_str = N.toString()
    for (n in N_str.toRuneArray()) {
        sum += Int64(UInt32(n)) - 48
    }
    return sum.format('b')
}
__CANGJIEBENCH_SOLUTION__
