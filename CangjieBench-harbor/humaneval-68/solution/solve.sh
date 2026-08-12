#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func pluck(arr: ArrayList<Int64>): ArrayList<Int64> {
    /*
    "Given an array representing a branch of a tree that has non-negative integer nodes
    your task is to pluck one of the nodes and return it.
    The plucked node should be the node with the smallest even value.
    If multiple nodes with the same smallest even value are found return the node that has smallest index.

    The plucked node should be returned in a list, [ smalest_value, its index ],
    If there are no even values or the given array is empty, return [].

    Example 1:
        Input: ArrayList<Int64>([4,2,3])
        Output: [2, 1]
        Explanation: 2 has the smallest even value, and 2 has the smallest index.

    Example 2:
        Input: ArrayList<Int64>([1,2,3])
        Output: [2, 1]
        Explanation: 2 has the smallest even value, and 2 has the smallest index. 

    Example 3:
        Input: ArrayList<Int64>()
        Output: []
    
    Example 4:
        Input: ArrayList<Int64>([5, 0, 3, 0, 4, 2])
        Output: [0, 1]
        Explanation: 0 is the smallest value, but  there are two zeros,
                     so we will choose the first zero, which has the smallest index.

    Constraints:
        * 1 <= nodes.length <= 10000
        * 0 <= node.value
    */
    if (arr.size == 0) {
        return ArrayList<Int64>()
    }
    let evens = ArrayList<Int64>()
    for (x in arr) {
        if (x % 2 == 0) {
            evens.add(x)
        }
    }
    if (evens.size == 0) {
        return ArrayList<Int64>()
    }
    var min = evens[0]
    for (i in 1..evens.size) {
        if (evens[i] < min) {
            min = evens[i]
        }
    }
    var min_index = 0
    for (i in 0..arr.size) {
        if (arr[i] == min) {
            min_index = i
            break
        }
    }
    return ArrayList<Int64>([min, min_index])
}
__CANGJIEBENCH_SOLUTION__
