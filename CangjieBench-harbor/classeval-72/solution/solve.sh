#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.regex.Regex
import std.collection.ArrayList

class RegexUtils {

    public func match_regex(pattern: String, text: String): Bool {
        let r = Regex(pattern)
        let ans = r.matches(text)
        if (ans) {
            return true
        } else {
            return false
        }
    }

    public func findall(pattern: String, text: String): ArrayList<String> {
        let r = Regex(pattern)
        let ans = r.findAll(text)
        let arr = ArrayList<String>()
        for (i in ans) {
            arr.add(i.matchString())
        }
        return arr
    }

    public func split(pattern: String, text: String): ArrayList<String> {
        let r = Regex(pattern)
        let arr = r.split(text)
        return ArrayList<String>(arr)
    }

    public func sub(pattern: String, replacement: String, text: String): String {
        let r = Regex(pattern)
        return r.replaceAll(text, replacement)
    }

    public func generate_email_pattern(): String {
        let pattern = #'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b'#
        return pattern
    }

    public func generate_phone_number_pattern(): String {
        let pattern = #'\b\d{3}-\d{3}-\d{4}\b'#
        return pattern
    }

    public func generate_split_sentences_pattern(): String {
        let pattern = #'[.!?][\s]{1,2}(?=[A-Z])'#
        return pattern
    }

    public func split_sentences(text: String): ArrayList<String> {
        let pattern = this.generate_split_sentences_pattern()
        return this.split(pattern, text)
    }

    public func validate_phone_number(phone_number: String): Bool {
        let pattern = this.generate_phone_number_pattern()
        return this.match_regex(pattern, phone_number)
    }

    public func extract_email(text: String): ArrayList<String> {
        let pattern = this.generate_email_pattern()
        return this.findall(pattern, text)
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
