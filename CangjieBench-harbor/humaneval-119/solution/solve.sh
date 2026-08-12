#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func match_parens(lst: ArrayList<String>): String {
    /*
    You are given a list of two strings, both strings consist of open
    parentheses '(' or close parentheses ')' only.
    Your job is to check if it is possible to concatenate the two strings in
    some order, that the resulting string will be good.
    A string S is considered to be good if and only if all parentheses in S
    are balanced. For example: the string '(())()' is good, while the string
    '())' is not.
    Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.

    Examples:
    match_parens(ArrayList<String>(['()(', ')'])) == 'Yes'
    match_parens(ArrayList<String>([')', ')'])) == 'No'
    */
    func check(s: String): Bool {
        var val = 0
        for (i in s) {
            if (Rune(i) == r'(') {
                val = val + 1
            } else {
                val = val - 1
            }
            if (val < 0) {
                return false
            }
        }
        if (val == 0) {
            return true
        }
        return false
    }

    let S1 = lst[0] + lst[1]
    let S2 = lst[1] + lst[0]
    if (check(S1) || check(S2)) {
        return "Yes"
    }
    return "No"
}
__CANGJIEBENCH_SOLUTION__
