#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList

func below_zero(operations: ArrayList<Int64>): Bool {
    /*
    You're given a list of deposit and withdrawal operations on a bank account that starts with
    zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
    at that point function should return true. Otherwise it should return false.
    >>> below_zero(ArrayList<Int64>([1, 2, 3]))
    false
    >>> below_zero(ArrayList<Int64>([1, 2, -4, 5]))
    true
    */
    var balance = 0

    for (op in operations) {
        balance += op
        if (balance < 0) {
            return true
        }
    }

    return false
}
__CANGJIEBENCH_SOLUTION__
