#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func int_to_mini_roman(number: Int64): String {
    /*
    Given a positive integer, obtain its roman numeral equivalent as a string,
    and return it in lowercase.
    Restrictions: 1 <= num <= 1000

    Examples:
    >>> int_to_mini_roman(19) == 'xix'
    >>> int_to_mini_roman(152) == 'clii'
    >>> int_to_mini_roman(426) == 'cdxxvi'
    */
    let num = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000]
    let sym = ["I", "IV", "V", "IX", "X", "XL", "L", "XC", "C", "CD", "D", "CM", "M"]
    var i = 12
    var res = ''
    var number_ = number
    while (number_ > 0) {
        var div = number_ / num[i]
        number_ %= num[i]
        while (div > 0) {
            res += sym[i]
            div -= 1
        }
        i -= 1
    }
    return res.toAsciiLower()
}
__CANGJIEBENCH_SOLUTION__
