#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func sum_product(numbers: ArrayList<Int64>): (Int64, Int64) {
    /*
    For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
    Empty sum should be equal to 0 and empty product should be equal to 1.
    >>> sum_product(ArrayList<Int64>([]))
    (0, 1)
    >>> sum_product(ArrayList<Int64>([1, 2, 3, 4]))
    (10, 24)
    */
    var sum_value = 0
    var prod_value = 1

    for (n in numbers) {
        sum_value += n
        prod_value *= n
    }

    return (sum_value, prod_value)
}
__CANGJIEBENCH_SOLUTION__
