#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func total_match(lst1: ArrayList<String>, lst2: ArrayList<String>): ArrayList<String> {
    /*
    Write a function that accepts two lists of strings and returns the list that has 
    total number of chars in the all strings of the list less than the other list.

    if the two lists have the same number of chars, return the first list.

    Examples
    total_match(ArrayList<String>([]), ArrayList<String>([])) ➞ []
    total_match(ArrayList<String>(['hi', 'admin']), ArrayList<String>(['hI', 'Hi'])) ➞ ['hI', 'Hi']
    total_match(ArrayList<String>(['hi', 'admin']), ArrayList<String>(['hi', 'hi', 'admin', 'project'])) ➞ ['hi', 'admin']
    total_match(ArrayList<String>(['hi', 'admin']), ArrayList<String>(['hI', 'hi', 'hi'])) ➞ ['hI', 'hi', 'hi']
    total_match(ArrayList<String>(['4']), ArrayList<String>(['1', '2', '3', '4', '5'])) ➞ ['4']
    */
    var l1 = 0
    for (st in lst1) {
        l1 += st.size
    } 

    var l2 = 0
    for (st in lst2) {
        l2 += st.size
    }

    if (l1 <= l2) {
        return lst1
    } else {
        return lst2
    }
}
__CANGJIEBENCH_SOLUTION__
