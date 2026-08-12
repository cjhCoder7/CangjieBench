#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.math.pow
import std.math.abs
import std.random.Random

func poly(xs: ArrayList<Int64>, x: Float64): Float64 {
    /*
    Evaluates polynomial with coefficients xs at point x.
    return xs[0] + xs[1] * x + xs[1] * x^2 + .... xs[n] * x^n
    */
    var result: Float64 = 0.0
    for (i in 0..xs.size) {
        result += Float64(xs[i]) * pow(x, i)
    }
    return result
}

func find_zero(xs: ArrayList<Int64>): Float64 {
    /*
    xs are coefficients of a polynomial.
    find_zero find x such that poly(x) = 0.
    find_zero returns only only zero point, even if there are many.
    Moreover, find_zero only takes list xs having even number of coefficients
    and largest non zero coefficient as it guarantees
    a solution.
    >>> find_zero(ArrayList<Int64>([1, 2])) # f(x) = 1 + 2x
    -0.5
    >>> find_zero(ArrayList<Int64>([-6, 11, -6, 1])) # (x - 1) * (x - 2) * (x - 3) = -6 + 11x - 6x^2 + x^3
    1.0
    */
    var begin = -1.0
    var end = 1.0
    while (poly(xs, begin) * poly(xs, end) > 0.0) {
        begin *= 2.0
        end *= 2.0
    }
    while (end - begin > 1e-10) {
        var centern = (begin + end) / 2.0
        if (poly(xs, centern) * poly(xs, begin) > 0.0) {
            begin = centern
        } else {
            end = centern
        }
    }
    return begin
}
__CANGJIEBENCH_SOLUTION__
