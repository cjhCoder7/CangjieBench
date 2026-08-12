#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.convert.Parsable

class BigNumCalculator {

    public static func add(num1: String, num2: String): String {
        let max_length = max(num1.size, num2.size)
        let num1_padded = "0" * (max_length - num1.size) + num1
        let num2_padded = "0" * (max_length - num2.size) + num2

        var carry = 0
        var result = ""
        for (i in (max_length - 1)..=0:-1) {
            let digit_sum = Int64.parse(Rune(num1_padded[i]).toString()) + Int64.parse(Rune(num2_padded[i]).toString()) + carry
            carry = digit_sum / 10
            let digit = digit_sum % 10
            result = digit.toString() + result
        }
        if (carry > 0) {
            result = carry.toString() + result
        }
        return result
    }

    public static func subtract(num1: String, num2: String): String {
        var num1_local = num1
        var num2_local = num2
        var negative = false

        if (num1_local.size < num2_local.size || (num1_local.size == num2_local.size && num1_local < num2_local)) {
            let temp = num1_local
            num1_local = num2_local
            num2_local = temp
            negative = true
        }

        let max_length = max(num1_local.size, num2_local.size)
        let num1_padded = "0" * (max_length - num1_local.size) + num1_local
        let num2_padded = "0" * (max_length - num2_local.size) + num2_local

        var borrow = 0
        var result = ""
        for (i in (max_length - 1)..=0:-1) {
            var digit_diff = Int64.parse(Rune(num1_padded[i]).toString()) - Int64.parse(Rune(num2_padded[i]).toString()) - borrow

            if (digit_diff < 0) {
                digit_diff += 10
                borrow = 1
            } else {
                borrow = 0
            }
            result = digit_diff.toString() + result
        }

        while (result.size > 1 && Rune(result[0]).toString() == "0") {
            result = result[1..result.size]
        }

        if (negative) {
            result = "-" + result
        }
        return result
    }

    public static func multiply(num1: String, num2: String): String {
        let len1 = num1.size
        let len2 = num2.size
        let result = Array<Int64>(len1 + len2, repeat: 0)

        for (i in (len1 - 1)..=0:-1) {
            for (j in (len2 - 1)..=0:-1) {
                let mul = Int64.parse(Rune(num1[i]).toString()) * Int64.parse(Rune(num2[j]).toString())
                let p1 = i + j
                let p2 = i + j + 1
                let total = mul + result[p2]

                result[p1] += total / 10
                result[p2] = total % 10
            }
        }
        var start = 0
        while (start < result.size - 1 && result[start] == 0) {
            start++
        }
        var result_str = ""
        for (i in start..result.size) {
            result_str += result[i].toString()
        }
        return result_str
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
