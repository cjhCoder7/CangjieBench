#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.convert.Parsable

func compare_one(a: Any, b: Any): Any {
    /*
    Create a function that takes integers, floats, or strings representing
    real numbers, and returns the larger variable in its given variable type.
    Return "None" if the values are equal.
    Note: If a real number is represented as a string, the floating point might be . or ,

    compare_one(1, 2.5) ➞ 2.5
    compare_one(1, "2,3") ➞ "2,3"
    compare_one("5,1", "6") ➞ "6"
    compare_one("1", 1) ➞ "None"
    */
    func convert_float64(n: Any): Float64 {
        if (n is String) {
            let n_str = (n as String ?? "").replace(",", ".")
            return Float64.parse(n_str)
        } else if (n is Int64) {
            return Float64(n as Int64 ?? 0)
        } else {
            return n as Float64 ?? 0.0
        }
    }
    if (convert_float64(a) > convert_float64(b)) {
        return a
    } else if (convert_float64(a) < convert_float64(b)) {
        return b
    } else {
        return "None"
    }
}
__CANGJIEBENCH_SOLUTION__
