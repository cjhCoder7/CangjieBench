#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func file_name_check(file_name: String): String {
    /*
    Create a function which takes a string representing a file's name, and returns
    'Yes' if the the file's name is valid, and returns 'No' otherwise.
    A file's name is considered to be valid if and only if all the following conditions 
    are met:
    - There should not be more than three digits ('0'-'9') in the file's name.
    - The file's name contains exactly one dot '.'
    - The substring before the dot should not be empty, and it starts with a letter from 
    the latin alphapet ('a'-'z' and 'A'-'Z').
    - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
    Examples:
    file_name_check("example.txt") # => 'Yes'
    file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
    */
    let suf = ['txt', 'exe', 'dll']
    let lst = file_name.split(".")
    if (lst.size != 2) {
        return 'No'
    }
    if (!suf.contains(lst[1])) {
        return 'No'
    }
    if (lst[0].size == 0) {
        return 'No'
    }
    if (!Rune(lst[0][0]).isAsciiLetter()) {
        return 'No'
    }
    var t = 0
    for (x in lst[0].toRuneArray()) {
        if (x.isAsciiNumber()) {
            t++
        }
    }
    if (t > 3) {
        return 'No'
    }
    return 'Yes'
}
__CANGJIEBENCH_SOLUTION__
