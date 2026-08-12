import std.collection.ArrayList

class BalancedBrackets {

    /*
    This is a class that checks for bracket matching
    */

    let stack: ArrayList<String>
    let left_brackets: ArrayList<String>
    let right_brackets: ArrayList<String>
    var expr: String

    public init(expr: String) {
        /*
        Initializes the class with an expression.
        :param expr: The expression to check for balanced brackets,String.
        */
        this.stack = ArrayList<String>()
        this.left_brackets = ArrayList<String>(["(", "{", "["])
        this.right_brackets = ArrayList<String>([")", "}", "]"])
        this.expr = expr
    }

    public func clear_expr(): Unit {
        /*
        Clears the expression of all characters that are not brackets.
        >>> b = BalancedBrackets("a(b)c")
        >>> b.clear_expr()
        >>> b.expr
        '()'

        */

    }

    public func check_balanced_brackets(): Bool {
        /*
        Checks if the expression has balanced brackets.
        :return: true if the expression has balanced brackets, false otherwise.
        >>> b = BalancedBrackets("a(b)c")
        >>> b.check_balanced_brackets()
        true

        */
        
    }
}
