#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.HashMap

func histogram(test: String): HashMap<String, Int64> {
    /*
    Given a string representing a space separated lowercase letters, return a dictionary
    of the letter with the most repetition and containing the corresponding count.
    If several letters have the same occurrence, return all of them.
    
    Example:
    histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
    histogram('a b b a') == {'a': 2, 'b': 2}
    histogram('a b c a b') == {'a': 2, 'b': 2}
    histogram('b b b b a') == {'b': 4}
    histogram('') == {}
  
    */
    func count_arr(list: Array<String>, letter: String): Int64 {
        var count = 0
        for (j in list) {
            if (j == letter) {
                count += 1
            }
        }
        return count
    }

    let dict1 = HashMap<String, Int64>()
    let list1 = test.split(" ")
    var t = 0

    for (i in list1) {
        if (count_arr(list1, i) > t && i != "") {
            t = count_arr(list1, i)
        }
    }
    if (t > 0) {
        for (i in list1) {
            if (count_arr(list1, i) == t) {
                dict1.add(i, t)
            }
        }
    }
    return dict1
}
__CANGJIEBENCH_SOLUTION__
