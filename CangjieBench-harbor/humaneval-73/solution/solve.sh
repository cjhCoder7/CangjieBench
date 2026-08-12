#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func smallest_change(arr: ArrayList<Int64>): Int64 {
    /*
    Given an array arr of integers, find the minimum number of elements that
    need to be changed to make the array palindromic. A palindromic array is an array that
    is read the same backwards and forwards. In one change, you can change one element to any other element.

    For example:
    smallest_change(ArrayList<Int64>([1,2,3,5,4,7,9,6])) == 4
    smallest_change(ArrayList<Int64>([1, 2, 3, 4, 3, 2, 2])) == 1
    smallest_change(ArrayList<Int64>([1, 2, 3, 2, 1])) == 0
    */
    var ans = 0
    for (i in 0..(arr.size / 2)) {
        if (arr[i] != arr[arr.size - 1 - i]) {
            ans += 1
        }
    }
    return ans
}
__CANGJIEBENCH_SOLUTION__
