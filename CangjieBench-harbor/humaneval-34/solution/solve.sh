#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.sort.sort

func unique(l: ArrayList<Int64>): ArrayList<Int64> {
    /*
    Return sorted unique elements in a list
    >>> unique(ArrayList<Int64>([5, 3, 5, 2, 3, 3, 9, 0, 123]))
    [0, 2, 3, 5, 9, 123]
    */
    let result = ArrayList<Int64>()
    for (i in l) {
        if (!result.contains(i)) {
            result.add(i)
        }
    }
    sort(result)
    return result
}
__CANGJIEBENCH_SOLUTION__
