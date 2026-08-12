#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func will_it_fly(q: ArrayList<Int64>, w: Int64): Bool {
    /*
    Write a function that returns true if the object q will fly, and false otherwise.
    The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.

    Example:
    will_it_fly(ArrayList<Int64>([1, 2]), 5) ➞ false 
    # 1+2 is less than the maximum possible weight, but it's unbalanced.

    will_it_fly(ArrayList<Int64>([3, 2, 3]), 1) ➞ false
    # it's balanced, but 3+2+3 is more than the maximum possible weight.

    will_it_fly(ArrayList<Int64>([3, 2, 3]), 9) ➞ true
    # 3+2+3 is less than the maximum possible weight, and it's balanced.

    will_it_fly(ArrayList<Int64>([3]), 5) ➞ true
    # 3 is less than the maximum possible weight, and it's balanced.
    */
    var sum = 0
    for (i in q) {
        sum += i
    }
    if (sum > w) {
        return false
    }

    var i = 0
    var j = q.size - 1
    while (i < j) {
        if (q[i] != q[j]) {
            return false
        }
        i += 1
        j -= 1
    }
    return true
}
__CANGJIEBENCH_SOLUTION__
