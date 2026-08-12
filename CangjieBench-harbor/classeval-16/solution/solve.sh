#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.HashMap
import std.collection.ArrayList
import std.convert.Parsable

class Calculator {

    let operators: HashMap<String, (Float64, Float64) -> Float64>

    public init() {
        this.operators = HashMap<String, (Float64, Float64) -> Float64>()
        operators.add("+", {x: Float64, y: Float64 => x + y})
        operators.add("-", {x: Float64, y: Float64 => x - y})
        operators.add("*", {x: Float64, y: Float64 => x * y})
        operators.add("/", {x: Float64, y: Float64 => x / y})
        operators.add("^", {x: Float64, y: Float64 => x ** y})
    }

    public func calculate(expression: String): Option<Float64> {
        var operand_stack = ArrayList<Float64>()
        var operator_stack = ArrayList<String>()
        var num_buffer = ''

        for (char in expression.toRuneArray()) {
            if (char.isAsciiNumber() || char == r'.') {
                num_buffer += char.toString()
            } else {
                if (num_buffer != '') {
                    operand_stack.add(Float64.parse(num_buffer))
                    num_buffer = ''
                }

                if ('+-*/^'.contains(char.toString())) {
                    while (operator_stack.size > 0 && operator_stack[operator_stack.size - 1] != '(' && this.precedence(operator_stack[operator_stack.size - 1]) >= this.precedence(char.toString())) {
                        let apply_res = this.apply_operator(operand_stack, operator_stack)
                        operand_stack = apply_res[0]
                        operator_stack = apply_res[1]
                    }
                    operator_stack.add(char.toString())
                } else if (char == r'(') {
                    operator_stack.add(char.toString())
                } else if (char == r')') {
                    while (operator_stack.size > 0 && operator_stack[operator_stack.size - 1] != '(') {
                        let apply_res = this.apply_operator(operand_stack, operator_stack)
                        operand_stack = apply_res[0]
                        operator_stack = apply_res[1]
                    }
                    operator_stack.remove(at: operator_stack.size - 1)
                }
            }
        }

        if (num_buffer != '') {
            operand_stack.add(Float64.parse(num_buffer))
        }

        while (operator_stack.size > 0) {
            let apply_res = this.apply_operator(operand_stack, operator_stack)
            operand_stack = apply_res[0]
            operator_stack = apply_res[1]
        }

        return if (operand_stack.size != 0) {
            operand_stack[operand_stack.size - 1]
        } else {
            None
        }
    }

    public func precedence(op: String): Int64 {
        match (op) {
            case "+" => return 1
            case "-" => return 1
            case "*" => return 2
            case "/" => return 2
            case "^" => return 3
            case _ => return 0
        }
    }

    public func apply_operator(operand_stack: ArrayList<Float64>, operator_stack: ArrayList<String>): (ArrayList<Float64>, ArrayList<String>) {
        let op = operator_stack.remove(at: operator_stack.size - 1)
        if (op == "^") {
            let operand2 = operand_stack.remove(at: operand_stack.size - 1)
            let operand1 = operand_stack.remove(at: operand_stack.size - 1)
            let result = this.operators[op](operand1, operand2)
            operand_stack.add(result)
        } else {
            let operand2 = operand_stack.remove(at: operand_stack.size - 1)
            let operand1 = operand_stack.remove(at: operand_stack.size - 1)
            let result = this.operators[op](operand1, operand2)
            operand_stack.add(result)
        }
        return (operand_stack, operator_stack)
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
