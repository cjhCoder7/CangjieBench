import std.collection.HashMap
import std.collection.ArrayList
import std.convert.Parsable

class Calculator {

    /*
    This is a class for a calculator, capable of performing basic arithmetic calculations on numerical expressions using the operators +, -, *, /, and ^ (exponentiation).
    */

    let operators: HashMap<String, (Float64, Float64) -> Float64>

    public init() {
        /*
        Initialize the operations performed by the five operators'+','-','*','/','^'
        */
        this.operators = HashMap<String, (Float64, Float64) -> Float64>()
        operators.add("+", {x: Float64, y: Float64 => x + y})
        operators.add("-", {x: Float64, y: Float64 => x - y})
        operators.add("*", {x: Float64, y: Float64 => x * y})
        operators.add("/", {x: Float64, y: Float64 => x / y})
        operators.add("^", {x: Float64, y: Float64 => x ** y})
    }

    public func calculate(expression: String): Option<Float64> {
        /*
        Calculate the value of a given expression
        :param expression: String, given expression
        :return:If successful, returns the value of the expression; otherwise, returns None
        >>> calculator = Calculator()
        >>> calculator.calculate('1+2-3')
        0.0
        */

    }

    public func precedence(op: String): Int64 {
        /*
        Returns the priority of the specified operator, where the higher the priority, the greater the assignment. The priority of '^' is greater than '/' and '*', and the priority of '/' and '*' is greater than '+' and '-'
        :param operator: String, given operator
        :return: Int64, the priority of the given operator, otherwise return 0
        >>> calculator = Calculator()
        >>> calculator.precedence('+')
        1
        >>> calculator.precedence('^')
        3
        */

    }

    public func apply_operator(operand_stack: ArrayList<Float64>, operator_stack: ArrayList<String>): (ArrayList<Float64>, ArrayList<String>) {
        /*
        Use the operator at the top of the operator stack to perform the operation on the two numbers at the top of the operator stack, and store the results at the top of the operator stack
        :param operand_stack:ArrayList<Float64>
        :param operator_stack:ArrayList<String>
        :return: the updated operand_stack and operator_stack
        >>> calculator = Calculator()
        >>> calculator.apply_operator(ArrayList<Float64>([1, 2, 3]), ArrayList<String>(['+', '-']))
        ([1, -1], ['-'])
        */

    }
}
