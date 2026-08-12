#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.sort.sort

func get_row(lst: ArrayList<ArrayList<Int>>, x: Int64): ArrayList<(Int64, Int64)> {
    /*
    You are given a 2 dimensional data, as a nested lists,
    which is similar to matrix, however, unlike matrices,
    each row may contain a different number of columns.
    Given lst, and integer x, find integers x in the list,
    and return list of tuples, [(x1, y1), (x2, y2) ...] such that
    each tuple is a coordinate - (row, columns), starting with 0.
    Sort coordinates initially by rows in ascending order.
    Also, sort coordinates of the row by columns in descending order.
    
    Examples:
    get_row(ArrayList<ArrayList<Int64>>([
      ArrayList<Int64>([1,2,3,4,5,6]),
      ArrayList<Int64>([1,2,3,4,1,6]),
      ArrayList<Int64>([1,2,3,4,5,1])
    ]), 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
    get_row(ArrayList<ArrayList<Int64>>([]), 1) == []
    get_row(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([]), ArrayList<Int64>([1]), ArrayList<Int64>([1, 2, 3])]), 3) == [(2, 2)]
    */
    let coords = ArrayList<(Int64, Int64)>()
    for (i in 0..lst.size) {
        let row = lst[i]
        for (j in 0..row.size) {
            if (row[j] == x) {
                coords.add((i, j))
            }
        }
    }
    sort(coords, key: {i: (Int64, Int64) => i[1]}, descending: true)
    sort(coords, key: {i: (Int64, Int64) => i[0]})
    return coords
}
__CANGJIEBENCH_SOLUTION__
