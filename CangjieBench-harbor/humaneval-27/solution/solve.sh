#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func flip_case(string: String): String {
    /*
    For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
    >>> flip_case('Hello')
    'hELLO'
    */
    var result = ''
    for (char in string.toRuneArray()) {
        if (char.isAsciiLowerCase()) {
            result += char.toAsciiUpperCase().toString()
        } else if (char.isAsciiUpperCase()) {
            result += char.toAsciiLowerCase().toString()
        } else {
            result += char.toString()
        }
    }
    return result
}
__CANGJIEBENCH_SOLUTION__
