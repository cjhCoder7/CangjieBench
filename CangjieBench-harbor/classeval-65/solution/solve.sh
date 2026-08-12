#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.convert.Parsable
import std.unicode.UnicodeStringExtension

class NumberWordFormatter {

    let NUMBER: Array<String>
    let NUMBER_TEEN: Array<String>
    let NUMBER_TEN: Array<String>
    let NUMBER_MORE: Array<String>
    let NUMBER_SUFFIX: Array<String>

    public init() {
        this.NUMBER = ["", "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SEVEN", "EIGHT", "NINE"]
        this.NUMBER_TEEN = ["TEN", "ELEVEN", "TWELVE", "THIRTEEN", "FOURTEEN", "FIFTEEN", "SIXTEEN", "SEVENTEEN",
                            "EIGHTEEN",
                            "NINETEEN"]
        this.NUMBER_TEN = ["TEN", "TWENTY", "THIRTY", "FORTY", "FIFTY", "SIXTY", "SEVENTY", "EIGHTY", "NINETY"]
        this.NUMBER_MORE = ["", "THOUSAND", "MILLION", "BILLION"]
        this.NUMBER_SUFFIX = ["k", "w", "", "m", "", "", "b", "", "", "t", "", "", "p", "", "", "e"]
    }

    public func format(x: Option<String>): String {
        if (x != None) {
            return this.format_string(x ?? "")
        } else {
            return ""
        }
    }

    public func format_string(x: String): String {
        let parts = x.split(".")
        var lstr = parts[0]
        var rstr = ""
        if (parts.size > 1) {
            rstr = parts[1]
        }
        var lstrrev = ""
        for (i in lstr.size-1..=0:-1) {
            lstrrev += Rune(lstr[i]).toString()
        }
        let a = Array<String>(5, repeat: "")

        if (lstrrev.size % 3 == 1) {
            lstrrev += "00"
        } else if (lstrrev.size % 3 == 2) {
            lstrrev += "0"
        }

        var lm = ""
        for (i in 0..lstrrev.size / 3) {
            let temp = lstrrev[(3 * i)..(3 * i + 3)]
            var temp_rev = ""
            for (j in temp.size-1..=0:-1) {
                temp_rev += Rune(temp[j]).toString()
            }
            a[i] = temp_rev
            if (a[i] != "000") {
                lm = this.trans_three(a[i]) + " " + this.parse_more(i) + " " + lm
            } else {
                lm += this.trans_three(a[i])
            }
        }

        var xs = ""
        if (rstr != "") {
            xs = "AND CENTS ${this.trans_two(rstr)} "
        }
        if (lm.trim() == "") {
            return "ZERO ONLY"
        } else {
            return "${lm.trim()} ${xs}ONLY"
        }
    }

    public func trans_two(s: String): String {
        if (s.size == 1 || Rune(s[0]) == r'0') {
            return this.NUMBER[Int64.parse(s)]
        } else if (Rune(s[0]) == r'1') {
            return this.NUMBER_TEEN[Int64.parse(s) - 10]
        } else if (Rune(s[1]) == r'0') {
            return this.NUMBER_TEN[Int64.parse(Rune(s[0]).toString()) - 1]
        } else {
            return this.NUMBER_TEN[Int64.parse(Rune(s[0]).toString()) - 1] + " " + this.NUMBER[Int64.parse(Rune(s[1]).toString())]
        }
    }

    public func trans_three(s: String): String {
        if (Rune(s[0]) == r'0') {
            return this.trans_two(s[1..])
        } else if (s[1..] == "00") {
            return "${this.NUMBER[Int64.parse(Rune(s[0]).toString())]} HUNDRED"
        } else {
            return "${this.NUMBER[Int64.parse(Rune(s[0]).toString())]} HUNDRED AND ${this.trans_two(s[1..])}"
        }
    }

    public func parse_more(i: Int64): String {
        return this.NUMBER_MORE[i]
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
