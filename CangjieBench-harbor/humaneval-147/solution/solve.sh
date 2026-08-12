#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func get_max_triples(n: Int64): Int64 {
    /*
    You are given a positive integer n. You have to create an integer array a of length n.
        For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
        Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
    and a[i] + a[j] + a[k] is a multiple of 3.

    Example :
        Input: n = 5
        Output: 1
        Explanation: 
        a = [1, 3, 7, 13, 21]
        The only valid triple is (1, 7, 13).
    */
    let A = ArrayList<Int64>()
    for (i in 1..n+1) {
        A.add(i * i - i + 1)
    }
    let ans = ArrayList<Int64>()
    for (i in 0..n) {
        for (j in i+1..n) {
            for (k in j+1..n) {
                if ((A[i] + A[j] + A[k]) % 3 == 0) {
                    ans.add(A[i] + A[j] + A[k])
                }
            }
        }
    }
    return ans.size
}
__CANGJIEBENCH_SOLUTION__
