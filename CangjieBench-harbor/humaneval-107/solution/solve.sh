#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func even_odd_palindrome(n: Int64): (Int64, Int64) {
    /*
    Given a positive integer n, return a tuple that has the number of even and odd
    integer palindromes that fall within the range(1, n), inclusive.

    Example 1:

        Input: 3
        Output: (1, 2)
        Explanation:
        Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.

    Example 2:

        Input: 12
        Output: (4, 6)
        Explanation:
        Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.

    Note:
        1. 1 <= n <= 10^3
        2. returned tuple has the number of even and odd integer palindromes respectively.
    */
    func is_palindrome(x: Int64): Bool {
        let s = x.toString()
        let n = s.size
        for (i in 0..n/2) {
            if (s[i] != s[n-1-i]) {
                return false
            }
        }
        return true
    }

    var even_palindrome_count = 0
    var odd_palindrome_count = 0

    for (i in 1..n+1) {
        if (i%2 == 1 && is_palindrome(i)) {
            odd_palindrome_count += 1
        } else if (i%2 == 0 && is_palindrome(i)) {
            even_palindrome_count += 1
        }
    }
    return (even_palindrome_count, odd_palindrome_count)
}
__CANGJIEBENCH_SOLUTION__
