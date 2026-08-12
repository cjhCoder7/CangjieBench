#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func split_words(txt: String): ArrayList<String> {
    /*
    Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
    should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
    alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
    Examples
    split_words("Hello world!") ➞ ["Hello", "world!"]
    split_words("Hello,world!") ➞ ["Hello", "world!"]
    split_words("abcdef") == ["3"] 
    */
    if (txt.contains(" ")) {
        return ArrayList<String>(txt.split(" "))
    } else if (txt.contains(",")) {
        return ArrayList<String>(txt.split(","))
    } else {
        var sum = 0
        for (i in txt) {
            if (i.isAsciiLowerCase() && (i - 97) % 2 == 1) {
                sum++
            }
        }
        return ArrayList<String>([sum.toString()])
    }
}
__CANGJIEBENCH_SOLUTION__
