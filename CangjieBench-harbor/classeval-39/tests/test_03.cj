import std.math.numeric.Decimal
import std.regex.Regex
import std.collection.ArrayList

func test_compare_1() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.compare("+", "-")
    if (!result) {
        throw Exception("Test failed!")
    }
}

func test_compare_2() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.compare("*", "/")
    if (!result) {
        throw Exception("Test failed!")
    }
}

func test_compare_3() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.compare("+", "*")
    if (!result) {
        throw Exception("Test failed!")
    }
}

func test_compare_4() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.compare("*", "+")
    if (result) {
        throw Exception("Test failed!")
    }
}

func test_compare_5() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.compare("/", "+")
    if (result) {
        throw Exception("Test failed!")
    }
}

func test_compare_6() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.compare("%", "+")
    if (result) {
        throw Exception("Test failed!")
    }
}

func test_compare_7() {
    let expression_calculator = ExpressionCalculator()
    let result = expression_calculator.compare("+", "%")
    if (!result) {
        throw Exception("Test failed!")
    }
}

main() {
    test_compare_1()
    test_compare_2()
    test_compare_3()
    test_compare_4()
    test_compare_5()
    test_compare_6()
    test_compare_7()
}
