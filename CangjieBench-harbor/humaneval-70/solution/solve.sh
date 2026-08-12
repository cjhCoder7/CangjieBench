#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.collection.min
import std.collection.max

func strange_sort_list(lst: ArrayList<Int64>): ArrayList<Int64> {
    /*
    Given list of integers, return list in strange order.
    Strange sorting, is when you start with the minimum value,
    then maximum of the remaining integers, then minimum and so on.

    Examples:
    strange_sort_list(Array<Int64>[1, 2, 3, 4]) == [1, 4, 2, 3]
    strange_sort_list(ArrayList<Int64>([5, 5, 5, 5])) == [5, 5, 5, 5]
    strange_sort_list(ArrayList<Int64>([])) == []
    */
    let res = ArrayList<Int64>()
    var switch = true
    while (lst.size > 0) {
        if (switch) {
            let min = min(lst) ?? 0
            res.add(min)
        } else {
            let max = max(lst) ?? 0
            res.add(max)
        }
        for (i in 0..lst.size) {
            if (lst[i] == res[res.size - 1]) {
                lst.remove(at: i)
                break
            }
        }
        switch = !switch
    }
    return res
}
__CANGJIEBENCH_SOLUTION__
