#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.sort.sort

func median(l: ArrayList<Int64>): Float64 {
    /*
    Return median of elements in the list l.
    >>> median(ArrayList<Int64>([3, 1, 2, 4, 5]))
    3.0
    >>> median(ArrayList<Int64>([-10, 4, 6, 1000, 10, 20]))
    15.0
    */
    sort(l)
    if (l.size % 2 == 1) {
        return Float64(l[l.size / 2])
    } else {
        return Float64((l[l.size / 2 - 1] + l[l.size / 2])) / 2.0
    }
}
__CANGJIEBENCH_SOLUTION__
