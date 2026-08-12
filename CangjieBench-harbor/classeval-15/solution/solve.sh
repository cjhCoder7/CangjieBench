#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList

class BoyerMooreSearch {

    let text: String
    let pattern: String
    let textLen: Int64
    let patLen: Int64

    public init(text: String, pattern: String) {
        this.text = text
        this.pattern = pattern
        this.textLen = text.size
        this.patLen = pattern.size
    }

    public func match_in_pattern(char: String): Int64 {
        for (i in (this.patLen - 1)..-1:-1) {
            if (char == Rune(this.pattern[i]).toString()) {
                return i
            }
        }
        return -1
    }

    public func mismatch_in_text(currentPos: Int64): Int64 {
        for (i in (this.patLen - 1)..-1:-1) {
            if (this.pattern[i] != this.text[currentPos + i]) {
                return currentPos + i
            }
        }
        return -1
    }

    public func bad_character_heuristic(): ArrayList<Int64> {
        let positions = ArrayList<Int64>()
        var i = 0
        while (i <= this.textLen - this.patLen) {
            let mismatch_index = this.mismatch_in_text(i)
            if (mismatch_index == -1) {
                positions.add(i)
                i++
            } else {
                let match_index = this.match_in_pattern(Rune(this.text[mismatch_index]).toString())
                i = mismatch_index - match_index
            }
        }
        return positions
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
