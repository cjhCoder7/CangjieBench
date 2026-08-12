#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
class Manacher {

    let input_string: String

    public init(input_string: String) {
        this.input_string = input_string
    }

    public func palindromic_length(center: Int64, diff: Int64, string: String): Int64 {
        if (center - diff == -1 || center + diff == string.size || string[center - diff] != string[center + diff]) {
            return 0
        }
        return 1 + this.palindromic_length(center, diff + 1, string)
    }

    public func palindromic_string(): String {
        var max_length = 0

        var new_input_string = ""
        var output_string = ""

        for (i in this.input_string[..this.input_string.size - 1]) {
            new_input_string += Rune(i).toString() + "|"
        }
        new_input_string += Rune(this.input_string[this.input_string.size - 1]).toString()

        var start = -1

        for (i in 0..new_input_string.size) {

            let length = this.palindromic_length(i, 1, new_input_string)

            if (max_length < length) {
                max_length = length
                start = i
            }
        }

        for (i in new_input_string[start - max_length..start + max_length + 1]) {
            if (Rune(i).toString() != "|") {
                output_string += Rune(i).toString()
            }
        }

        return output_string
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
