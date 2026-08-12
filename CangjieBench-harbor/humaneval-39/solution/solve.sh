#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.math.sqrt

func prime_fib(n: Int64): Int64 {
    /*
    prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    >>> prime_fib(1)
    2
    >>> prime_fib(2)
    3
    >>> prime_fib(3)
    5
    >>> prime_fib(4)
    13
    >>> prime_fib(5)
    89
    */
    func is_prime(p: Int64): Bool {
        if (p < 2) {
            return false
        }
        for (k in 2..min(Int64(sqrt(Float64(p))) + 1, p - 1)) {
            if (p % k == 0) {
                return false
            }
        }
        return true
    }
    var n_ = n
    let f = ArrayList<Int64>([0, 1])
    while (true) {
        f.add(f[f.size - 1] + f[f.size - 2])
        if (is_prime(f[f.size - 1])) {
            n_ -= 1
        }
        if (n_ == 0) {
            return f[f.size - 1]
        }
    }
    return 0
}
__CANGJIEBENCH_SOLUTION__
