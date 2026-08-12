#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func max_element(l: ArrayList<Int64>): Int64 {
    /*
    Return maximum element in the list.
    >>> max_element(ArrayList<Int64>([1, 2, 3]))
    3
    >>> max_element(ArrayList<Int64>([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]))
    123
    */
    var m = l[0]
    for (e in l) {
        if (e > m) {
            m = e
        }
    }
    return m
}
__CANGJIEBENCH_SOLUTION__
