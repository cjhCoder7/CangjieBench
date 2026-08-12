#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList
import std.regex.Regex
import std.unicode.UnicodeStringExtension

class SplitSentence {

    public func split_sentences(sentences_string: String): ArrayList<String> {
        let r = Regex(#'(?<!\w\.\w.)(?<![A-Z][a-z]\.)(?<=\.|\?)\s'#)
        let sentences = r.split(sentences_string)
        return ArrayList<String>(sentences)
    }

    public func count_words(sentence: String): Int64 {
        let r = Regex(#'[^a-zA-Z\s]'#)
        var new_sentence = r.replaceAll(sentence, "")
        new_sentence = new_sentence.replace("  ", " ")
        new_sentence = new_sentence.trim()
        let words = new_sentence.split(" ")
        return words.size
    }

    public func process_text_file(sentences_string: String): Int64 {
        let sentences = this.split_sentences(sentences_string)
        var max_count = 0
        for (sentence in sentences) {
            let count = this.count_words(sentence)
            if (count > max_count) {
                max_count = count
            }
        }

        return max_count
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
