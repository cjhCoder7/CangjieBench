#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList
import std.collection.HashMap
import std.regex.Regex
import std.sort.sort
import std.unicode.UnicodeStringExtension

class NLPDataProcessor2 {

    public func process_data(string_list: ArrayList<String>): ArrayList<ArrayList<String>> {
        let words_list = ArrayList<ArrayList<String>>()
        for (string in string_list) {
            let r = Regex(##'[^a-zA-Z\s]'##)
            var processed_string = string.toLower()
            processed_string = r.replaceAll(processed_string, "")
            processed_string = processed_string.replace("  ", " ")
            processed_string = processed_string.trim()
            let words = ArrayList<String>(processed_string.split(" "))
            words_list.add(words)
        }
        return words_list
    }

    public func calculate_word_frequency(words_list: ArrayList<ArrayList<String>>): HashMap<String, Int64> {
        let word_frequency = HashMap<String, Int64>()
        let word_list = ArrayList<String>()
        for (words in words_list) {
            for (word in words) {
                if (word_frequency.contains(word)) {
                    word_frequency.add(word, word_frequency[word] + 1)
                } else {
                    word_frequency.add(word, 1)
                    word_list.add(word)
                }
            }
        }
        let top_5_word_frequency = HashMap<String, Int64>()
        let key = {i: String => word_frequency[i]}
        sort(word_list, key: key, stable: true, descending: true)
        for (i in 0..word_list.size) {
            if (i < 5) {
                top_5_word_frequency.add(word_list[i], word_frequency[word_list[i]])
            } else {
                break
            }
        }
        return top_5_word_frequency
    }

    public func process(string_list: ArrayList<String>): HashMap<String, Int64> {
        let words_list = this.process_data(string_list)
        let word_frequency_dict = this.calculate_word_frequency(words_list)
        return word_frequency_dict
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
