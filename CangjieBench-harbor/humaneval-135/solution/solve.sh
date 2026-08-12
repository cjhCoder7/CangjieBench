#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func can_arrange(arr: ArrayList<Int64>): Int64 {
    /*
    Create a function which returns the largest index of an element which
    is not greater than or equal to the element immediately preceding it. If
    no such element exists then return -1. The given array will not contain
    duplicate values.

    Examples:
    can_arrange(ArrayList<Int64>([1,2,4,3,5])) = 3
    can_arrange(ArrayList<Int64>([1,2,3])) = -1
    */
    var ind = -1
    var i = 1
    while (i < arr.size) {
        if (arr[i] < arr[i - 1]) {
            ind = i
        }
        i += 1
    }
    return ind
}
__CANGJIEBENCH_SOLUTION__
