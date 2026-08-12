#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.collection.HashMap
import std.sort.sort

func by_length(arr: ArrayList<Int64>): ArrayList<String> {
    /*
    Given an array of integers, sort the integers that are between 1 and 9 inclusive,
    reverse the resulting array, and then replace each digit by its corresponding name from
    "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".

    For example:
      arr = [2, 1, 1, 4, 5, 8, 2, 3]   
            -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
            -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
      return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
    
      If the array is empty, return an empty array:
      arr = []
      return []
    
      If the array has any strange number ignore it:
      arr = [1, -1 , 55] 
            -> sort arr -> [-1, 1, 55]
            -> reverse arr -> [55, 1, -1]
      return = ['One']
    */
    let dic = HashMap<Int64, String>([(1, "One"), (2, "Two"), (3, "Three"), (4, "Four"), (5, "Five"), (6, "Six"), (7, "Seven"), (8, "Eight"), (9, "Nine")])
    let sorted_arr = ArrayList<Int64>(arr)
    sort(sorted_arr, descending: true)
    let new_arr = ArrayList<String>()
    for (var_ in sorted_arr) {
        if (dic.contains(var_)) {
            new_arr.add(dic.get(var_) ?? "")
        }
    }
    return new_arr
}
__CANGJIEBENCH_SOLUTION__
