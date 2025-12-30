func test_apply_operator_1() {
    let calculator = Calculator()
    var operand_stack = ArrayList<Float64>([1.0, 2.0, 3.0])
    var operator_stack = ArrayList<String>(["+", "-"])
    calculator.apply_operator(operand_stack, operator_stack)
    let expected_operand = ArrayList<Float64>([1.0, -1.0])
    let expected_operator = ArrayList<String>(["+"])
    if (operand_stack != expected_operand || operator_stack != expected_operator) {
        throw Exception("Test failed!")
    }
}

func test_apply_operator_2() {
    let calculator = Calculator()
    var operand_stack = ArrayList<Float64>([1.0, 2.0, 3.0])
    var operator_stack = ArrayList<String>(["+", "*"])
    calculator.apply_operator(operand_stack, operator_stack)
    let expected_operand = ArrayList<Float64>([1.0, 6.0])
    let expected_operator = ArrayList<String>(["+"])
    if (operand_stack != expected_operand || operator_stack != expected_operator) {
        throw Exception("Test failed!")
    }
}

func test_apply_operator_3() {
    let calculator = Calculator()
    var operand_stack = ArrayList<Float64>([6.0, 3.0, 3.0])
    var operator_stack = ArrayList<String>(["+", "/"])
    calculator.apply_operator(operand_stack, operator_stack)
    let expected_operand = ArrayList<Float64>([6.0, 1.0])
    let expected_operator = ArrayList<String>(["+"])
    if (operand_stack != expected_operand || operator_stack != expected_operator) {
        throw Exception("Test failed!")
    }
}

func test_apply_operator_4() {
    let calculator = Calculator()
    var operand_stack = ArrayList<Float64>([1.0, 2.0, 3.0])
    var operator_stack = ArrayList<String>(["+", "^"])
    calculator.apply_operator(operand_stack, operator_stack)
    let expected_operand = ArrayList<Float64>([1.0, 8.0])
    let expected_operator = ArrayList<String>(["+"])
    if (operand_stack != expected_operand || operator_stack != expected_operator) {
        throw Exception("Test failed!")
    }
}

func test_apply_operator_5() {
    let calculator = Calculator()
    var operand_stack = ArrayList<Float64>([1.0, 2.0, 3.0])
    var operator_stack = ArrayList<String>(["+", "+"])
    calculator.apply_operator(operand_stack, operator_stack)
    let expected_operand = ArrayList<Float64>([1.0, 5.0])
    let expected_operator = ArrayList<String>(["+"])
    if (operand_stack != expected_operand || operator_stack != expected_operator) {
        throw Exception("Test failed!")
    }
}

main() {
    test_apply_operator_1()
    test_apply_operator_2()
    test_apply_operator_3()
    test_apply_operator_4()
    test_apply_operator_5()
}