#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func below_threshold(l: ArrayList<Int64>, t: Int64): Bool {
    /*
    Return true if all numbers in the list l are below threshold t.
    >>> below_threshold(ArrayList<Int64>([1, 2, 4, 10]), 100)
    true
    >>> below_threshold(ArrayList<Int64>([1, 20, 4, 10]), 5)
    false
    */
    for (e in l) {
        if (e >= t) {
            return false
        }
    }
    return true
}
__CANGJIEBENCH_SOLUTION__
