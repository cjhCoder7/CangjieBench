func test_ExpressionCalculator() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.calculate("2 + 3 * 4")
    if (result != 14.0) {
        throw Exception("Test failed!")
    }

    expression_calculator.prepare("2+3*4")
    let expected = ArrayList<String>(["2", "3", "4", "*", "+"])
    if (expression_calculator.postfix_stack != expected) {
        throw Exception("Test failed!")
    }

    if (!ExpressionCalculator.is_operator("+")) {
        throw Exception("Test failed!")
    }

    let result2 = expression_calculator.compare("+", "-")
    if (!result2) {
        throw Exception("Test failed!")
    }

    let result3 = ExpressionCalculator._calculate(Decimal.parse("2"), Decimal.parse("3"), "+")
    if (result3.toFloat64() != 5.0) {
        throw Exception("Test failed!")
    }

    let result4 = ExpressionCalculator.transform("2 + 3 * 4")
    if (result4 != "2+3*4") {
        throw Exception("Test failed!")
    }
}

main() {
    test_ExpressionCalculator()
}