#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.collection.HashSet
import std.sort.sort

func common(l1: ArrayList<Int64>, l2: ArrayList<Int64>): ArrayList<Int64> {
    /*
    Return sorted unique common elements for two lists.
    >>> common(ArrayList<Int64>([1, 4, 3, 34, 653, 2, 5]), ArrayList<Int64>([5, 7, 1, 5, 9, 653, 121]))
    [1, 5, 653]
    >>> common(ArrayList<Int64>([5, 3, 2, 8]), ArrayList<Int64>([3, 2]))
    [2, 3]

    */
    let ret = HashSet<Int64>()
    for (e1 in l1) {
        for (e2 in l2) {
            if (e1 == e2) {
                ret.add(e1)
            }
        }
    }
    let ret_list = ArrayList<Int64>(ret)
    sort(ret_list)
    return ret_list
}
__CANGJIEBENCH_SOLUTION__
