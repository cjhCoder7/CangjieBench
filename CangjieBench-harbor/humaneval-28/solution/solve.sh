#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func concatenate(strings: ArrayList<String>): String {
    /*
    Concatenate list of strings into a single string
    >>> concatenate(ArrayList<String>())
    ''
    >>> concatenate(ArrayList<String>(['a', 'b', 'c']))
    'abc'
    */
    var result = ''
    for (i in strings) {
        result += i
    }
    return result
}
__CANGJIEBENCH_SOLUTION__
