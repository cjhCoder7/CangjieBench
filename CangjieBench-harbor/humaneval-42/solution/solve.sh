#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func incr_list(l: ArrayList<Int64>): ArrayList<Int64> {
    /*
    Return list with elements incremented by 1.
    >>> incr_list(ArrayList<Int64>([1, 2, 3]))
    [2, 3, 4]
    >>> incr_list(ArrayList<Int64>([5, 3, 5, 2, 3, 3, 9, 0, 123]))
    [6, 4, 6, 3, 4, 4, 10, 1, 124]
    */
    for (i in 0..l.size) {
        l[i] = l[i] + 1
    }
    return l
}
__CANGJIEBENCH_SOLUTION__
