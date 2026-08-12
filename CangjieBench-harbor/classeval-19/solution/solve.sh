#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList

class ChandrasekharSieve {

    let n: Int64
    var primes: ArrayList<Int64> = ArrayList<Int64>()

    public init(n: Int64) {
        this.n = n
        this.primes = generate_primes()
    }

    public func generate_primes(): ArrayList<Int64> {
        if (this.n < 2) {
            return ArrayList<Int64>()
        }

        let sieve = Array<Bool>(this.n + 1, repeat: true)
        sieve[0] = false
        sieve[1] = false

        var p = 2
        while (p * p <= this.n) {
            if (sieve[p]) {
                for (i in p*p..this.n+1 : p) {
                    sieve[i] = false
                }
            }
            p += 1
        }

        let new_primes = ArrayList<Int64>()
        for (i in 2..this.n+1) {
            if (sieve[i]) {
                new_primes.add(i)
            }
        }

        return new_primes
    }

    public func get_primes(): ArrayList<Int64> {
        return this.primes
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
