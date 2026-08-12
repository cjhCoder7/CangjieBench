#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func is_happy(s: String): Bool {
    /*
    You are given a string s.
    Your task is to check if the string is happy or not.
    A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
    For example:
    is_happy('a') => false
    is_happy('aa') => false
    is_happy('abcd') => true
    is_happy('aabb') => false
    is_happy('adb') => true
    is_happy('xyy') => false
    */
    if (s.size < 3) {
        return false
    }

    for (i in 0..s.size - 2) {
        if (s[i] == s[i+1] || s[i+1] == s[i+2] || s[i] == s[i+2]) {
            return false
        }
    }
    return true
}
__CANGJIEBENCH_SOLUTION__
