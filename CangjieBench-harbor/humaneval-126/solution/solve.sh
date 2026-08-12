#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.collection.HashMap

func is_sorted(lst: ArrayList<Int64>): Bool {
    /*
    Given a list of numbers, return whether or not they are sorted
    in ascending order. If list has more than 1 duplicate of the same
    number, return false. Assume no negative numbers and only integers.

    Examples
    is_sorted(ArrayList<Int64>([5])) ➞ true
    is_sorted(ArrayList<Int64>([1, 2, 3, 4, 5])) ➞ true
    is_sorted(ArrayList<Int64>([1, 3, 2, 4, 5])) ➞ false
    is_sorted(ArrayList<Int64>([1, 2, 3, 4, 5, 6])) ➞ true
    is_sorted(ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7])) ➞ true
    is_sorted(ArrayList<Int64>([1, 3, 2, 4, 5, 6, 7])) ➞ false
    is_sorted(ArrayList<Int64>([1, 2, 2, 3, 3, 4])) ➞ true
    is_sorted(ArrayList<Int64>([1, 2, 2, 2, 3, 4])) ➞ false
    */
    let count_digit = HashMap<Int64, Int64>()
    for (i in lst) {
        count_digit.add(i, 0)
    }
    for (i in lst) {
        count_digit.replace(i, (count_digit.get(i) ?? 0) + 1)
    }
    for (i in lst) {
        if ((count_digit.get(i) ?? 0) > 2) {
            return false
        }
    }
    var is_sorted = true
    for (i in 1..lst.size) {
        if (lst[i - 1] > lst[i]) {
            is_sorted = false
            break
        }
    }
    return is_sorted
}
__CANGJIEBENCH_SOLUTION__
