#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.HashMap
import std.collection.ArrayList

class Words2Numbers {

    let numwords: HashMap<String, (Int64, Int64)>
    let units: ArrayList<String>
    let tens: ArrayList<String>
    let scales: ArrayList<String>
    let ordinal_words: HashMap<String, Int64>
    let ordinal_endings: ArrayList<(String, String)>

    public init() {
        this.numwords = HashMap<String, (Int64, Int64)>()
        this.units = ArrayList<String>(["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"])
        this.tens = ArrayList<String>(["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"])
        this.scales = ArrayList<String>(["hundred", "thousand", "million", "billion", "trillion"])

        this.numwords["and"] = (1, 0)
        for (idx in 0..this.units.size) {
            this.numwords[this.units[idx]] = (1, idx)
        }
        for (idx in 0..this.tens.size) {
            this.numwords[this.tens[idx]] = (1, idx * 10)
        }
        for (idx in 0..this.scales.size) {
            if (idx * 3 == 0) {
                this.numwords[this.scales[idx]] = (10 ** 2, 0)
            } else {
                this.numwords[this.scales[idx]] = (Int64(10.0 ** (idx * 3)), 0)
            }
        }

        this.ordinal_words = HashMap<String, Int64>([('first', 1), ('second', 2), ('third', 3), ('fifth', 5), ('eighth', 8), ('ninth', 9), ('twelfth', 12)])
        this.ordinal_endings = ArrayList<(String, String)>([('ieth', 'y'), ('th', '')])
    }

    public func text2int(textnum: String): String {
        let textnum_ = textnum.replace('-', ' ')

        var current = 0
        var result = 0
        var curstring = ""
        var onnumber = false

        for (word in textnum_.split(" ")) {
            if (this.ordinal_words.contains(word)) {
                let (scale, increment) = (1, this.ordinal_words[word])
                current = current * scale + increment
                onnumber = true
            } else {
                var word_ = word
                for ((ending, replacement) in this.ordinal_endings) {
                    if (word_.endsWith(ending)) {
                        word_ = "${word_[..word_.size-ending.size]}${replacement}"
                    }
                }

                if (!this.numwords.contains(word_)) {
                    if (onnumber) {
                        curstring += (result + current).toString() + " "
                    }
                    curstring += word_ + " "
                    result = 0
                    current = 0
                    onnumber = false
                } else {
                    let (scale, increment) = this.numwords[word_]
                    current = current * scale + increment
                    if (scale > 100) {
                        result += current
                        current = 0
                    }
                    onnumber = true
                }
            }
        }

        if (onnumber) {
            curstring += (result + current).toString()
        }

        return curstring
    }

    public func is_valid_input(textnum: String): Bool {
        let textnum_ = textnum.replace('-', ' ')

        for (word in textnum_.split(" ")) {
            if (this.ordinal_words.contains(word)) {
                continue
            } else {
                var word_ = word
                for ((ending, replacement) in this.ordinal_endings) {
                    if (word_.endsWith(ending)) {
                        word_ = "${word_[..word_.size-ending.size]}${replacement}"
                    }
                }

                if (!this.numwords.contains(word_)) {
                    return false
                }
            }
        }

        return true
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
