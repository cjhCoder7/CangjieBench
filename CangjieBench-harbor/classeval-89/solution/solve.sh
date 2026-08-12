#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList
import std.collection.HashMap
import std.random.Random
import std.convert.Parsable

class Parser {

    let expr: String
    var pos: Int64
    var ch: Rune

    public init(expr: String) {
        this.expr = expr
        this.pos = -1
        this.ch = r'x'
        this.next_char()
    }

    public func next_char(): Unit {
        this.pos += 1
        if (this.pos < this.expr.size) {
            this.ch = Rune(this.expr[this.pos])
        } else {
            this.ch = r'x'
        }
    }
        
    public func eat(char_to_eat: Rune): Bool {
        while (this.ch == r' ') {
            this.next_char()
        }
        if (this.ch == char_to_eat) {
            this.next_char()
            return true
        }
        return false
    }
        
    public func parse(): Int64 {
        let x = this.parse_expression()
        if (this.pos < this.expr.size) {
            throw Exception("Unexpected: ${this.ch}")
        }
        return x
    }
        
    public func parse_expression(): Int64 {
        var x = this.parse_term()
        while (true) {
            if (this.eat(r'+')) {
                x += this.parse_term()
            } else if (this.eat(r'-')) {
                x -= this.parse_term()
            } else {
                return x
            }
        }
        return x
    }
        
    public func parse_term(): Int64 {
        var x = this.parse_factor()
        while (true) {
            if (this.eat(r'*')) {
                x *= this.parse_factor()
            } else if (this.eat(r'/')) {
                x /= this.parse_factor()
            } else {
                return x
            }
        }
        return x
    }
        
    public func parse_factor(): Int64 {
        if (this.eat(r'+')) {
            return this.parse_factor()
        }
        if (this.eat(r'-')) {
            return -this.parse_factor()
        }
        
        var x = 0
        var start_pos = this.pos
        
        if (this.eat(r'(')) {
            x = this.parse_expression()
            this.eat(r')')
        } else if (this.ch != r'x' && (this.ch.isAsciiNumber() || this.ch == r'.')) {
            while (this.ch != r'x' && (this.ch.isAsciiNumber() || this.ch == r'.')) {
                this.next_char()
            }
            x = Int64.parse(this.expr[start_pos..this.pos])
        } else {
            if (this.ch != r'x') {
                throw Exception("Unexpected: ${this.ch}")
            } else {
                throw Exception("Unexpected end of expression")
            }
        }
        return x
    }
}

class TwentyFourPointGame {

    var nums: ArrayList<Int64>

    public init() {
        this.nums = ArrayList<Int64>()
    }

    public func _generate_cards(): Unit {
        for (_ in 0..4) {
            let r = Random()
            this.nums.add(r.nextInt64(9) + 1)
        }
        if (this.nums.size != 4) {
            throw Exception("nums size is not 4")
        }
    }

    public func get_my_cards(): ArrayList<Int64> {
        this.nums = ArrayList<Int64>()
        this._generate_cards()
        return this.nums
    }

    public func answer(expression: String): Bool {
        if (expression == 'pass') {
            this.get_my_cards()
            return false
        }

        let statistic = HashMap<String, Int64>()
        for (c in expression.toRuneArray()) {
            if (c.isAsciiNumber() && this.nums.contains(Int64.parse(c.toString()))) {
                statistic[c.toString()] = (statistic.get(c.toString()) ?? 0) + 1
            }
        }

        let nums_used = statistic.clone()

        for (num in nums) {
            if ((nums_used.get(num.toString()) ?? -100) != -100 && nums_used[num.toString()] > 0) {
                nums_used[num.toString()] -= 1
            } else {
                return false
            }
        }

        var all_count_zero = true
        for (count in nums_used.values()) {
            if (count != 0) {
                all_count_zero = false
                break
            }
        }

        if (all_count_zero == true) {
            return this.evaluate_expression(expression)
        } else {
            return false
        }
    }

    public func evaluate_expression(expression: String): Bool {
        try {
            let parser = Parser(expression)
            if (parser.parse() == 24) {
                return true
            } else {
                return false
            }
        } catch (e: Exception) {
            return false
        }
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
