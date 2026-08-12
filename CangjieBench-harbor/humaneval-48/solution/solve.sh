#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func is_palindrome(text: String): Bool {
    /*
    Checks if given string is a palindrome
    >>> is_palindrome('')
    true
    >>> is_palindrome('aba')
    true
    >>> is_palindrome('aaaaa')
    true
    >>> is_palindrome('zbcd')
    false
    */
    for (i in 0..text.size) {
        if (text[i] != text[text.size - 1 - i]) {
            return false
        }
    }
    return true
}
__CANGJIEBENCH_SOLUTION__
