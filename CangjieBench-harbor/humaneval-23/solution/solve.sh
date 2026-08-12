#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func strlen(string: String): Int64 {
    /*
    Return length of given string
    >>> strlen('')
    0
    >>> strlen('abc')
    3
    */
    return string.size
}
__CANGJIEBENCH_SOLUTION__
