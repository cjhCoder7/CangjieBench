#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.math.numeric.Decimal
import std.regex.Regex
import std.collection.ArrayList

class ExpressionCalculator {

    let postfix_stack: ArrayList<String>
    let operat_priority: ArrayList<Int64>

    public init() {
        postfix_stack = ArrayList<String>()
        operat_priority = ArrayList<Int64>([0, 3, 2, 1, -1, 1, 0, 2])
    }

    public func calculate(expression: String): Float64 {
        this.prepare(transform(expression))

        let result_stack = ArrayList<String>()
        this.postfix_stack.reverse()

        while (this.postfix_stack.size > 0) {
            var current_op = this.postfix_stack.remove(at: this.postfix_stack.size - 1)
            if (!is_operator(current_op)) {
                current_op.replace("~", "-")
                result_stack.add(current_op)
            } else {
                let second_value_str = result_stack.remove(at: result_stack.size - 1)
                let first_value_str = result_stack.remove(at: result_stack.size - 1)

                second_value_str.replace("~", "-")
                first_value_str.replace("~", "-")

                let first_value = Decimal.parse(first_value_str)
                let second_value = Decimal.parse(second_value_str)

                let result = _calculate(first_value, second_value, current_op)
                result_stack.add(result.toString())
            }
        }

        return Decimal.parse(result_stack.remove(at: 0)).toFloat64()
    }

    public func prepare(expression: String): Unit {
        let op_stack = ArrayList<String>([','])
        let arr = expression.toRuneArray()
        var current_index = 0
        var count = 0

        for (i in 0..arr.size) {
            let current_op = String(arr[i])
            if (is_operator(current_op)) {
                if (count > 0) {
                    var new_postfix = ""
                    for (j in current_index..current_index + count) {
                        new_postfix += String(arr[j])
                    }
                    this.postfix_stack.add(new_postfix)
                }
                var peek_op = op_stack[op_stack.size - 1]
                if (current_op == ')') {
                    while (op_stack[op_stack.size - 1] != '(') {
                        this.postfix_stack.add(op_stack.remove(at: op_stack.size - 1))
                    }
                    op_stack.remove(at: op_stack.size - 1)
                } else {
                    while (current_op != '(' && peek_op != ',' && compare(current_op, peek_op)) {
                        this.postfix_stack.add(op_stack.remove(at: op_stack.size - 1))
                        peek_op = op_stack[op_stack.size - 1]
                    }
                    op_stack.add(current_op)
                }

                count = 0
                current_index = i + 1
            } else {
                count += 1
            }
        }

        if (count > 1 || (count == 1 && !is_operator(String(arr[current_index])))) {
            var new_postfix = ""
            for (j in current_index..current_index + count) {
                new_postfix += String(arr[j])
            }
            this.postfix_stack.add(new_postfix)
        }

        while (op_stack[op_stack.size - 1] != ',') {
            this.postfix_stack.add(op_stack.remove(at: op_stack.size - 1))
        }
    }

    public static func is_operator(c: String): Bool {
        return ['+', '-', '*', '/', '(', ')', '%'].contains(c)
    }

    public func compare(cur: String, peek: String): Bool {
        var cur_ = Rune(cur[0])
        var peek_ = Rune(peek[0])
        if (cur_ == r'%') {
            cur_ = r'/'
        }
        if (peek_ == r'%') {
            peek_ = r'/'
        }
        return operat_priority[Int64(UInt32(peek_) - 40)] >= operat_priority[Int64(UInt32(cur_) - 40)]
    }

    public static func _calculate(first_value: Decimal, second_value: Decimal, current_op: String): Decimal {
        if (current_op == '+') {
            return first_value + second_value
        } else if (current_op == '-') {
            return first_value - second_value
        } else if (current_op == '*') {
            return first_value * second_value
        } else if (current_op == '/') {
            return first_value / second_value
        } else if (current_op == '%') {
            return Decimal(first_value.toInt64() % second_value.toInt64())
        } else {
            throw Exception("Unexpected operator: ${current_op}")
        }
    }

    public static func transform(expression: String): String {
        let r1 = Regex(#"\s+"#)
        let r2 = Regex(#"=$"#)
        var expression_ = r1.replaceAll(expression, "")
        expression_ = r2.replaceAll(expression_, "")

        let arr = expression_.toRuneArray()

        for (i in 0..arr.size) {
            if (arr[i] == r'-') {
                if (i == 0) {
                    arr[i] = r'~'
                } else {
                    let prev_c = arr[i - 1]
                    if ([r'+', r'-', r'*', r'/', r'(', r'E', r'e'].contains(prev_c)) {
                        arr[i] = r'~'
                    }
                }
            }
        }

        if (arr[0] == r'~' && arr.size > 1 && arr[1] == r'(') {
            arr[0] = r'-'
            var res = ""
            for (i in 0..arr.size) {
                res += String(arr[i])
            }
            return "0" + res
        } else {
            var res = ""
            for (i in 0..arr.size) {
                res += String(arr[i])
            }
            return res
        }
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
