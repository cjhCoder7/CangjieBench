#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.convert.Parsable

func digits(n: Int64): Int64 {
    /*
    Given a positive integer n, return the product of the odd digits.
    Return 0 if all digits are even.
    For example:
    digits(1)  == 1
    digits(4)  == 0
    digits(235) == 15
    */
    var product = 1
    var odd_count = 0
    for (digit in n.toString().toRuneArray()) {
        let int_digit = Int64.parse(digit.toString())
        if (int_digit % 2 == 1) {
            product = product * int_digit
            odd_count += 1
        }
    }
    if (odd_count == 0) {
        return 0
    } else {
        return product
    }
}
__CANGJIEBENCH_SOLUTION__
