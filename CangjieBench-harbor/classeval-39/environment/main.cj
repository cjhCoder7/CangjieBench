import std.math.numeric.Decimal
import std.regex.Regex
import std.collection.ArrayList

class ExpressionCalculator {

    /*
    This is a class in Cangjie that can perform calculations with basic arithmetic operations, including addition, subtraction, multiplication, division, and modulo.
    */

    let postfix_stack: ArrayList<String>
    let operat_priority: ArrayList<Int64>

    public init() {
        /*
        Initialize the expression calculator
        */
        postfix_stack = ArrayList<String>()
        operat_priority = ArrayList<Int64>([0, 3, 2, 1, -1, 1, 0, 2])
    }

    public func calculate(expression: String): Float64 {
        /*
        Calculate the result of the given postfix expression
        :param expression: String, the postfix expression to be calculated
        :return: Float64, the calculated result
        >>> expression_calculator = ExpressionCalculator()
        >>> expression_calculator.calculate("2 + 3 * 4")
        14.0

        */
        
    }

    public func prepare(expression: String): Unit {
        /*
        Prepare the infix expression for conversion to postfix notation
        :param expression: String, the infix expression to be prepared
        >>> expression_calculator = ExpressionCalculator()
        >>> expression_calculator.prepare("2+3*4")

        expression_calculator.postfix_stack = ['2', '3', '4', '*', '+']
        */
        
    }

    public static func is_operator(c: String): Bool {
        /*
        Check if a character is an operator in ['+', '-', '*', '/', '(', ')', '%']
        :param c: String, the character to be checked
        :return: Bool, true if the character is an operator, false otherwise
        >>> ExpressionCalculator.is_operator("+")
        true

        */

    }

    public func compare(cur: String, peek: String): Bool {
        /*
        Compare the precedence of two operators
        :param cur: String, the current operator
        :param peek: String, the operator at the top of the operator stack
        :return: Bool, true if the current operator has higher or equal precedence, false otherwise
        >>> expression_calculator = ExpressionCalculator()
        >>> expression_calculator.compare("+", "-")
        true

        */
        
    }

    public static func _calculate(first_value: Decimal, second_value: Decimal, current_op: String): Decimal {
        /*
        Perform the mathematical calculation based on the given operands and operator
        :param first_value: Decimal, the first operand
        :param second_value: Decimal, the second operand
        :param current_op: String, the operator
        :return: Decimal, the calculated result
        >>> ExpressionCalculator._calculate("2", "3", "+")
        5.0

        */
        
    }

    public static func transform(expression: String): String {
        /*
        Transform the infix expression to a format suitable for conversion
        :param expression: String, the infix expression to be transformed
        :return: String, the transformed expression
        >>> ExpressionCalculator.transform("2 + 3 * 4")
        "2+3*4"

        */
        
    }
}

