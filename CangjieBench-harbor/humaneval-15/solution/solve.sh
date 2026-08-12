#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func string_sequence(n: Int64): String {
    /*
    Return a string containing space-delimited numbers starting from 0 upto n inclusive.
    >>> string_sequence(0)
    '0'
    >>> string_sequence(5)
    '0 1 2 3 4 5'
    */
    var result = ''
    for (i in 0..=n) {
        result += i.toString()
        if (i != n) {
            result += ' '
        }
    }
    return result
}
__CANGJIEBENCH_SOLUTION__
