#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func correct_bracketing(brackets: String): Bool {
    /*
    brackets is a string of "<" and ">".
    return true if every opening bracket has a corresponding closing bracket.

    >>> correct_bracketing("<")
    false
    >>> correct_bracketing("<>")
    true
    >>> correct_bracketing("<<><>>")
    true
    >>> correct_bracketing("><<>")
    false
    */
    var depth = 0
    for (b in brackets.toRuneArray()) {
        if (b == r'<') {
            depth += 1
        } else {
            depth -= 1
        }
        if (depth < 0) {
            return false
        }
    }
    return depth == 0
}
__CANGJIEBENCH_SOLUTION__
