#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.math.round
import std.convert.Formattable

func rounded_avg(n: Int64, m: Int64): String {
    /*
    You are given two positive integers n and m, and your task is to compute the
    average of the integers from n through m (including n and m). 
    Round the answer to the nearest integer and convert that to binary.
    If n is greater than m, return "-1".
    Example:
    rounded_avg(1, 5) => "0b11"
    rounded_avg(7, 5) => -1
    rounded_avg(10, 20) => "0b1111"
    rounded_avg(20, 33) => "0b11010"
    */
    if (m < n) {
        return "-1"
    }
    var summation = 0
    for (i in n..m+1) {
        summation += i
    }
    let average = Int64(round(Float64(summation) / Float64(m-n+1)))
    return "0b" + average.format("b")
}
__CANGJIEBENCH_SOLUTION__
