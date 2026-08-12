#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.collection.HashMap

func filter_integers(values: ArrayList<Any>): ArrayList<Int64> {
    /*
    Filter given list of any python values only for integers
    >>> filter_integers(ArrayList<Any>(['a', 3.14, 5]))
    [5]
    >>> filter_integers(ArrayList<Any>([1, 2, 3, 'abc', HashMap<Int64, Int64>(), ArrayList<Int64>()]))
    [1, 2, 3]
    */
    let result = ArrayList<Int64>()
    for (i in values) {
        if (i is Int64) {
            result.add((i as Int64) ?? 0)
        }
    }
    return result
}
__CANGJIEBENCH_SOLUTION__
