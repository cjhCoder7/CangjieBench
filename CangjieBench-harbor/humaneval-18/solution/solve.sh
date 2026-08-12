#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func how_many_times(string: String, substring: String): Int64 {
    /*
    Find how many times a given substring can be found in the original string. Count overlaping cases.
    >>> how_many_times('', 'a')
    0
    >>> how_many_times('aaa', 'a')
    3
    >>> how_many_times('aaaa', 'aa')
    3
    */
    var times = 0

    for (i in 0..(string.size - substring.size + 1)) {
        if (string[i..(i+substring.size)] == substring) {
            times += 1
        }
    }
    return times
}
__CANGJIEBENCH_SOLUTION__
