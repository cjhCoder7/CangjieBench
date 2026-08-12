#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList

class BalancedBrackets {

    let stack: ArrayList<String>
    let left_brackets: ArrayList<String>
    let right_brackets: ArrayList<String>
    var expr: String

    public init(expr: String) {
        this.stack = ArrayList<String>()
        this.left_brackets = ArrayList<String>(["(", "{", "["])
        this.right_brackets = ArrayList<String>([")", "}", "]"])
        this.expr = expr
    }

    public func clear_expr(): Unit {
        var temp_expr = ""
        for (c in this.expr.toRuneArray()) {
            if (this.left_brackets.contains(c.toString()) || this.right_brackets.contains(c.toString())) {
                temp_expr += c.toString()
            }
        }
        this.expr = temp_expr
    }

    public func check_balanced_brackets(): Bool {
        this.clear_expr()
        for (Brkt in this.expr.toRuneArray()) {
            if (this.left_brackets.contains(Brkt.toString())) {
                this.stack.add(Brkt.toString())
            } else {
                let Current_Brkt = this.stack.remove(at: this.stack.size - 1)
                if (Current_Brkt == "(") {
                    if (Brkt.toString() != ")") {
                        return false
                    }
                }
                if (Current_Brkt == "{") {
                    if (Brkt.toString() != "}") {
                        return false
                    }
                }
                if (Current_Brkt == "[") {
                    if (Brkt.toString() != "]") {
                        return false
                    }
                }
            }
        }
        if (this.stack.size != 0) {
            return false
        }
        return true
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
