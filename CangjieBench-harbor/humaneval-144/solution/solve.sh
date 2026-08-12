#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.convert.Parsable

func simplify(x: String, n: String): Bool {
    /*
    Your task is to implement a function that will simplify the expression
    x * n. The function returns true if x * n evaluates to a whole number and false
    otherwise. Both x and n, are string representation of a fraction, and have the following format,
    <numerator>/<denominator> where both numerator and denominator are positive whole numbers.

    You can assume that x, and n are valid fractions, and do not have zero as denominator.

    simplify("1/5", "5/1") = true
    simplify("1/6", "2/1") = false
    simplify("7/10", "10/2") = false
    */
    var x_ls = x.split("/")
    var n_ls = n.split("/")
    if (x_ls.size != 2 || n_ls.size != 2) {
        return false
    }
    let a = Int64.parse(x_ls[0])
    let b = Int64.parse(x_ls[1])
    let c = Int64.parse(n_ls[0])
    let d = Int64.parse(n_ls[1])
    let numerator = a * c
    let denom = b * d
    if (Float64(numerator/denom) == Float64(numerator)/Float64(denom)) {
        return true
    }
    return false
}
__CANGJIEBENCH_SOLUTION__
