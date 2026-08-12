#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList

class NLPDataProcessor {

    public func construct_stop_word_list(): ArrayList<String> {
        let stop_word_list = ArrayList<String>(['a', 'an', 'the'])
        return stop_word_list
    }

    public func remove_stop_words(string_list: ArrayList<String>, stop_word_list: ArrayList<String>): ArrayList<ArrayList<String>> {
        let answer = ArrayList<ArrayList<String>>()
        for (string in string_list) {
            let string_split = string.split(" ")
            let new_string_list = ArrayList<String>()
            for (word in string_split) {
                if (!stop_word_list.contains(word)) {
                    new_string_list.add(word)
                }
            }
            answer.add(new_string_list)
        } 
        return answer
    }

    public func process(string_list: ArrayList<String>): ArrayList<ArrayList<String>> {
        let stop_word_list = this.construct_stop_word_list()
        let words_list = this.remove_stop_words(string_list, stop_word_list)
        return words_list
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
