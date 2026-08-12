import std.collection.ArrayList
import std.collection.HashMap
import std.random.Random
import std.convert.Parsable

class Parser {

    /*
    This class is used to parse the expression to get the answer
    params: expression, String
    >>> parser = Parser("4+3+6+6")
    >>> parser.parse()
    19
    */

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

    /*
    This ia a game of twenty-four points, which provides to generate four numbers and check whether player's expression is equal to 24.
    */

    var nums: ArrayList<Int64>

    public init() {
        this.nums = ArrayList<Int64>()
    }

    public func _generate_cards(): Unit {
        /*
        Generate random numbers between 1 and 9 for the cards.
        */
        
    }

    public func get_my_cards(): ArrayList<Int64> {
        /*
        Get a list of four random numbers between 1 and 9 representing the player's cards.
        :return: ArrayList<Int64>, representing the player's cards
        >>> game = TwentyFourPointGame()
        >>> game.get_my_cards()

        */
        
    }

    public func answer(expression: String): Bool {
        /*
        Check if a given mathematical expression using the cards can evaluate to 24.
        :param expression: String, mathematical expression using the cards
        :return: Bool, true if the expression evaluates to 24, false otherwise
        >>> game = TwentyFourPointGame()
        >>> game.nums = [4, 3, 6, 6]
        >>> ans = "4*3+6+6"
        >>> ret = game.answer(ans)
        true
        */
        
    }

    public func evaluate_expression(expression: String): Bool {
        /*
        Evaluate a mathematical expression and check if the result is 24.
        :param expression: String, mathematical expression
        :return: Bool, true if the expression evaluates to 24, false otherwise
        >>> game = TwentyFourPointGame()
        >>> nums = [4, 3, 6, 6]
        >>> ans = "4*3+6+6"
        >>> ret = game.evaluate_expression(ans)
        true
        */
        
    }
}

