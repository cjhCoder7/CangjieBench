#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func prime_length(string: String): Bool {
    /*
    Write a function that takes a string and returns true if the string
    length is a prime number or false otherwise.
    Examples
    prime_length('Hello') == true
    prime_length('abcdcba') == true
    prime_length('kittens') == true
    prime_length('orange') == false
    */
    let l = string.size
    if (l == 0 || l == 1) {
        return false
    }
    for (i in 2..l) {
        if (l % i == 0) {
            return false
        }
    }
    return true
}
__CANGJIEBENCH_SOLUTION__
