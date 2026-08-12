#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func add_elements(arr: ArrayList<Int64>, k: Int64): Int64 {
    /*
    Given a non-empty array of integers arr and an integer k, return
    the sum of the elements with at most two digits from the first k elements of arr.

    Example:

        Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
        Output: 24 # sum of 21 + 3

    Constraints:
        1. 1 <= len(arr) <= 100
        2. 1 <= k <= len(arr)
    */
    var sum = 0
    for (elem in arr[0..k]) {
        if (elem.toString().size <= 2) {
            sum += elem
        }
    }
    return sum
}
__CANGJIEBENCH_SOLUTION__
