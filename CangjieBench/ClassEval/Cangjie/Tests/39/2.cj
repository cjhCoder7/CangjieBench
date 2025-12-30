func test_is_operator_1() {
    if (!ExpressionCalculator.is_operator("+")) {
        throw Exception("Test failed!")
    }
}

func test_is_operator_2() {
    if (!ExpressionCalculator.is_operator("-")) {
        throw Exception("Test failed!")
    }
}

func test_is_operator_3() {
    if (!ExpressionCalculator.is_operator("*")) {
        throw Exception("Test failed!")
    }
}

func test_is_operator_4() {
    if (!ExpressionCalculator.is_operator("/")) {
        throw Exception("Test failed!")
    }
}

func test_is_operator_5() {
    if (ExpressionCalculator.is_operator("5")) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_operator_1()
    test_is_operator_2()
    test_is_operator_3()
    test_is_operator_4()
    test_is_operator_5()
}