#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.convert.Formattable
import std.convert.Parsable
import std.convert.RadixConvertible

class NumberConverter {

    public static func decimal_to_binary(decimal_num: Int64): String {
        return decimal_num.format("b")
    }

    public static func binary_to_decimal(binary_num: String): Int64 {
        return Int64.parse(binary_num, radix: 2)
    }

    public static func decimal_to_octal(decimal_num: Int64): String {
        return decimal_num.format("o")
    }

    public static func octal_to_decimal(octal_num: String): Int64 {
        return Int64.parse(octal_num, radix: 8)
    }

    public static func decimal_to_hex(decimal_num: Int64): String {
        return decimal_num.format("x")
    }

    public static func hex_to_decimal(hex_num: String): Int64 {
        return Int64.parse(hex_num, radix: 16)
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
