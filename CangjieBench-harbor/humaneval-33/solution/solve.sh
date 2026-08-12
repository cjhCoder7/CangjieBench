#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.sort.sort


func sort_third(l: ArrayList<Int64>): ArrayList<Int64> {
    /*
    This function takes a list l and returns a list l' such that
    l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
    to the values of the corresponding indicies of l, but sorted.
    >>> sort_third(ArrayList<Int64>([1, 2, 3]))
    [1, 2, 3]
    >>> sort_third(ArrayList<Int64>([5, 6, 3, 4, 8, 9, 2]))
    [2, 6, 3, 4, 8, 9, 5]
    */
    let l2 = ArrayList<Int64>()
    for (i in (0..l.size : 3)) {
        l2.add(l[i])
    }
    sort(l2)
    for (i in (0..l.size : 3)) {
        l[i] = l2[i / 3]
    }
    return l
}
__CANGJIEBENCH_SOLUTION__
