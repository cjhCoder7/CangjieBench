#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func fix_spaces(text: String): String {
    /*
    Given a string text, replace all spaces in it with underscores, 
    and if a string has more than 2 consecutive spaces, 
    then replace all consecutive spaces with - 
    
    fix_spaces("Example") == "Example"
    fix_spaces("Example 1") == "Example_1"
    fix_spaces(" Example 2") == "_Example_2"
    fix_spaces(" Example   3") == "_Example-3"
    */
    var new_text = ""
    var i = 0
    var start = 0
    var end = 0
    while (i < text.size) {
        if (Rune(text[i]) == r" ") {
            end += 1
        } else {
            if (end - start > 2) {
                new_text += "-" + Rune(text[i]).toString()
            } else if (end - start > 0) {
                new_text += "_" * (end - start) + Rune(text[i]).toString()
            } else {
                new_text += Rune(text[i]).toString()
            }
            start = i + 1
            end = i + 1
        }
        i += 1
    }
    if (end - start > 2) {
        new_text += "-"
    } else if (end - start > 0) {
        new_text += "_"
    }
    return new_text
}
__CANGJIEBENCH_SOLUTION__
