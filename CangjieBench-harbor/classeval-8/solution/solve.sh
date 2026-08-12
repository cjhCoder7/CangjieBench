#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
class BankAccount {

    var balance: Int64

    public init(balance!: Int64 = 0) {
        this.balance = balance
    }

    public func deposit(amount: Int64): Int64 {
        if (amount < 0) {
            throw Exception("Invalid amount")
        }
        this.balance += amount
        return this.balance
    }

    public func withdraw(amount: Int64): Int64 {
        if (amount < 0) {
            throw Exception("Invalid amount")
        }
        if (amount > this.balance) {
            throw Exception("Insufficient balance.")
        }
        this.balance -= amount
        return this.balance
    }

    public func view_balance(): Int64 {
        return this.balance
    }

    public func transfer(other_account: BankAccount, amount: Int64): Unit {
        this.withdraw(amount)
        other_account.deposit(amount)
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
