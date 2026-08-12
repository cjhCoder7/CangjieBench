#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'

func is_palindrome(string: String): Bool {
    // Test if given string is a palindrome
    let mid = string.size / 2
    for (i in 0..mid) {
        if (string[i] != string[string.size - 1 - i]) {
            return false
        }
    }
    return true
}

func make_palindrome(string: String): String {
    /*
    Find the shortest palindrome that begins with a supplied string.
    Algorithm idea is simple:
    - Find the longest postfix of supplied string that is a palindrome.
    - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    >>> make_palindrome('')
    ''
    >>> make_palindrome('cat')
    'catac'
    >>> make_palindrome('cata')
    'catac'
    */
    if (string == "") {
        return ""
    }

    var beginning_of_suffix = 0

    while (!is_palindrome(string[beginning_of_suffix..])) {
        beginning_of_suffix++
    }

    var prefix = string[0..beginning_of_suffix]
    var reverse_prefix = ''
    for (i in 0..prefix.size) {
        reverse_prefix = reverse_prefix + Rune(prefix[prefix.size - 1 - i]).toString()
    }

    return string + reverse_prefix
}
__CANGJIEBENCH_SOLUTION__
