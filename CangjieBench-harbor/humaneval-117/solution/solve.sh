#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.unicode.UnicodeStringExtension

func select_words(s: String, n: Int64): ArrayList<String> {
    /*
    Given a string s and a natural number n, you have been tasked to implement 
    a function that returns a list of all words from string s that contain exactly 
    n consonants, in order these words appear in the string s.
    If the string s is empty then the function should return an empty list.
    Note: you may assume the input string contains only letters and spaces.
    Examples:
    select_words("Mary had a little lamb", 4) ==> ["little"]
    select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
    select_words("simple white space", 2) ==> []
    select_words("Hello world", 4) ==> ["world"]
    select_words("Uncle sam", 3) ==> ["Uncle"]
    */
    let result = ArrayList<String>()
    let s_split = s.split(" ")
    for (word in s_split) {
        var n_consonants = 0
        for (i in 0..word.size) {
            if (!ArrayList<String>(["a", "e", "i", "o", "u"]).contains(Rune(word[i].toAsciiLowerCase()).toString())) {
                n_consonants += 1
            }
        }
        if (n_consonants == n) {
            result.add(word)
        }
    }
    return result
}
__CANGJIEBENCH_SOLUTION__
