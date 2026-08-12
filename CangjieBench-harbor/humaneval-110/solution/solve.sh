#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func exchange(lst1: ArrayList<Int64>, lst2: ArrayList<Int64>): String {
    /*
    In this problem, you will implement a function that takes two lists of numbers,
    and determines whether it is possible to perform an exchange of elements
    between them to make lst1 a list of only even numbers.
    There is no limit on the number of exchanged elements between lst1 and lst2.
    If it is possible to exchange elements between the lst1 and lst2 to make
    all the elements of lst1 to be even, return "YES".
    Otherwise, return "NO".
    For example:
    exchange(ArrayList<Int64>([1, 2, 3, 4]), ArrayList<Int64>([1, 2, 3, 4])) => "YES"
    exchange(ArrayList<Int64>([1, 2, 3, 4]), ArrayList<Int64>([1, 5, 3, 4])) => "NO"
    It is assumed that the input lists will be non-empty.     
    */
    var odd = 0
    var even = 0
    for (i in lst1) {
        if (i % 2 == 1) {
            odd += 1
        }
    }
    for (i in lst2) {
        if (i % 2 == 0) {
            even += 1
        }
    }
    if (even >= odd) {
        return "YES"
    }
    return "NO"
}
__CANGJIEBENCH_SOLUTION__
