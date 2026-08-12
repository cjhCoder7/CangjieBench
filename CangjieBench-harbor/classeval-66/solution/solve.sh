#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList
import std.convert.RadixConvertible

class NumericEntityUnescaper {

    public init() {}

    public func replace(string: String): String {
        let out = ArrayList<String>()
        var pos = 0
        let length = string.size

        while (pos < length - 2) {
            if (Rune(string[pos]) == r'&' && Rune(string[pos + 1]) == r'#') {
                var start = pos + 2
                var is_hex = false
                var first_char = Rune(string[start])

                if (first_char == r'x' || first_char == r'X') {
                    start += 1
                    is_hex = true
                }

                if (start == length) {
                    return String.join(out.toArray(), delimiter: "")
                }

                var end = start
                while (end < length && is_hex_char(Rune(string[end]))) {
                    end += 1
                }
                
                if (end < length && Rune(string[end]) == r';') {
                    var radix = 10
                    if (is_hex) {
                        radix = 16
                    }
                    let entity_value = Int64.tryParse(string[start..end], radix: radix)
                    if (entity_value == None) {
                        return String.join(out.toArray(), delimiter: "")
                    }
                    out.add(Rune(UInt32(entity_value ?? 0)).toString())
                    pos = end + 1
                    continue
                }
            }

            out.add(Rune(string[pos]).toString())
            pos += 1
        }

        return String.join(out.toArray(), delimiter: "")
    }

    public static func is_hex_char(char: Rune): Bool {
        return char.isAsciiNumber() || (r'a' <= char.toAsciiLowerCase() && char.toAsciiLowerCase() <= r'f')
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
