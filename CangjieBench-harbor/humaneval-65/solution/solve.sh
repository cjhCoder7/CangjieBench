#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func circular_shift(x: Int64, shift: Int64): String {
    /*
    Circular shift the digits of the integer x, shift the digits right by shift
    and return the result as a string.
    If shift > number of digits, return digits reversed.
    >>> circular_shift(12, 1)
    "21"
    >>> circular_shift(12, 2)
    "12"
    */
    let s = x.toString()
    if (shift > s.size) {
        var result = ""
        for (i in s.size-1..=0 : -1) {
            result += Rune(s[i]).toString()
        }
        return result
    } else {
        let shift_index = s.size - shift
        return s[shift_index..] + s[..shift_index]
    }
}
__CANGJIEBENCH_SOLUTION__
