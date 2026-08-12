#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func vowels_count(s: String): Int64 {
    /*
    Write a function vowels_count which takes a string representing
    a word as input and returns the number of vowels in the string.
    Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
    vowel, but only when it is at the end of the given word.

    Example:
    >>> vowels_count("abcde")
    2
    >>> vowels_count("ACEDY")
    3
    */
    let vowels = "aeiouAEIOU"
    var n_vowels = 0
    for (c in s) {
        if (vowels.contains(Rune(c).toString())) {
            n_vowels += 1
        }
    }
    if (s[s.size - 1..] == 'y' || s[s.size - 1..] == 'Y') {
        n_vowels += 1
    }
    return n_vowels
}
__CANGJIEBENCH_SOLUTION__
