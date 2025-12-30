import std.collection.ArrayList

func do_algebra(operators: ArrayList<String>, operand: ArrayList<Int64>): Int64 {
    /*
    Given two lists operators, and operand. The first list has basic algebra operations, and 
    the second list is a list of integers. Use the two given lists to build the algebric 
    expression and return the evaluation of this expression.

    The basic algebra operations:
    Addition ( + ) 
    Subtraction ( - ) 
    Multiplication ( * ) 
    Floor division ( // ) 
    Exponentiation ( ** ) 

    Example:
    operators['+', '*', '-']
    array = [2, 3, 4, 5]
    result = 2 + 3 * 4 - 5
    => result = 9

    Note:
        The length of operators list is equal to the length of operand list minus one.
        Operand is a list of of non-negative integers.
        Operator list has at least one operator, and operand list has at least two operands.

    */
    let operands = ArrayList<Int64>(operand)
    let num = ArrayList<Int64>()
    let posto = ArrayList<Int64>()

    for (i in 0..operands.size) {
        posto.add(i)
    }

    for (i in 0..operators.size) {
        if (operators[i] == "**") {
            while (posto[posto[i]] != posto[i]) {
                posto[i] = posto[posto[i]]
            }
            while (posto[posto[i+1]] != posto[i+1]) {
                posto[i+1] = posto[posto[i+1]]
            }

            var left_index = posto[i]
            var right_index = posto[i+1]
            operands[left_index] = Int64(Float64(operands[left_index]) ** Float64(operands[right_index]))
            posto[i+1] = left_index
        }
    }

    for (i in 0..operators.size) {
        let op = operators[i]
        if (op == "*" || op == "//") {
            while (posto[posto[i]] != posto[i]) {
                posto[i] = posto[posto[i]]
            }
            while (posto[posto[i+1]] != posto[i+1]) {
                posto[i+1] = posto[posto[i+1]]
            }

            var left_index = posto[i]
            var right_index = posto[i+1]
            if (op == "*") {
                operands[left_index] = Int64(Float64(operands[left_index]) * Float64(operands[right_index]))
            } else {
                operands[left_index] = Int64(Float64(operands[left_index]) / Float64(operands[right_index]))
            }
            posto[i+1] = left_index
        }
    }

    for (i in 0..operators.size) {
        let op = operators[i]
        if (op == "+" || op == "-") {
            while (posto[posto[i]] != posto[i]) {
                posto[i] = posto[posto[i]]
            }
            while (posto[posto[i+1]] != posto[i+1]) {
                posto[i+1] = posto[posto[i+1]]
            }

            var left_index = posto[i]
            var right_index = posto[i+1]
            if (op == "+") {
                operands[left_index] = operands[left_index] + operands[right_index]
            } else {
                operands[left_index] = operands[left_index] - operands[right_index]
            }
            posto[i+1] = left_index
        }
    }
    return operands[0]
}
