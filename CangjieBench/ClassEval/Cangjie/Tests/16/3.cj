func test_calculator() {
    let calculator = Calculator()
    let res = calculator.calculate("1+2")
    if (res != 3.0) {
        throw Exception("Test failed!")
    }
    let res1 = calculator.precedence("+")
    let res2 = calculator.precedence("-")
    let res3 = calculator.precedence("*")
    let res4 = calculator.precedence("/")
    let res5 = calculator.precedence("^")
    if (res1 != res2) {
        throw Exception("Test failed!")
    }
    if (res3 != res4) {
        throw Exception("Test failed!")
    }
    if (res3 <= res1) {
        throw Exception("Test failed!")
    }
    if (res5 <= res3) {
        throw Exception("Test failed!")
    }
    var operand_stack = ArrayList<Float64>([1.0, 2.0, 3.0])
    var operator_stack = ArrayList<String>(["+", "-"])
    calculator.apply_operator(operand_stack, operator_stack)
    let expected_operand = ArrayList<Float64>([1.0, -1.0])
    let expected_operator = ArrayList<String>(["+"])
    if (operand_stack != expected_operand || operator_stack != expected_operator) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculator()
}