#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.HashMap
import std.sort.*

func sort_numbers(numbers: String): String {
    /*
    Input is a space-delimited string of numberals from 'zero' to 'nine'.
    Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    Return the string with numbers sorted from smallest to largest
    >>> sort_numbers('three one five')
    'one three five'
    */
    let value_map = HashMap<String, Int64>([('zero', 0), ('one', 1), ('two', 2), ('three', 3), ('four', 4), ('five', 5), ('six', 6), ('seven', 7), ('eight', 8), ('nine', 9)])
    var splited_numbers = numbers.split(" ")
    sort(splited_numbers, lessThan: {a: String, b: String => return value_map[a] < value_map[b]})
    var result = ''
    for (i in 0..splited_numbers.size) {
        result += splited_numbers[i]
        if (i != splited_numbers.size - 1) {
            result += ' '
        }
    }
    return result
}
__CANGJIEBENCH_SOLUTION__
