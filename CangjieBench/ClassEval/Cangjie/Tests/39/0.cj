func test_calculate_1() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.calculate("2 + 3 * 4")
    if (result != 14.0) {
        print(result)
        throw Exception("Test failed!")
    }
}

func test_calculate_2() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.calculate("2 + 3 + 4")
    if (result != 9.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_3() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.calculate("2 * 3 * 4")
    if (result != 24.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_4() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.calculate("2 + 4 / 4")
    if (result != 3.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_5() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.calculate("(2 + 3) * 4")
    if (result != 20.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_1()
    test_calculate_2()
    test_calculate_3()
    test_calculate_4()
    test_calculate_5()
}