import std.math.numeric.Decimal
import std.regex.Regex
import std.collection.ArrayList

func test_prepare_1() {
    let expression_calculator = ExpressionCalculator()
    expression_calculator.prepare("2+3*4")
    let expected = ArrayList<String>(["2", "3", "4", "*", "+"])
    if (expression_calculator.postfix_stack != expected) {
        throw Exception("Test failed!")
    }
}

func test_prepare_2() {
    let expression_calculator = ExpressionCalculator()
    expression_calculator.prepare("2+3/4")
    let expected = ArrayList<String>(["2", "3", "4", "/", "+"])
    if (expression_calculator.postfix_stack != expected) {
        throw Exception("Test failed!")
    }
}

func test_prepare_3() {
    let expression_calculator = ExpressionCalculator()
    expression_calculator.prepare("2-3*4")
    let expected = ArrayList<String>(["2", "3", "4", "*", "-"])
    if (expression_calculator.postfix_stack != expected) {
        throw Exception("Test failed!")
    }
}

func test_prepare_4() {
    let expression_calculator = ExpressionCalculator()
    expression_calculator.prepare("1+3*4")
    let expected = ArrayList<String>(["1", "3", "4", "*", "+"])
    if (expression_calculator.postfix_stack != expected) {
        throw Exception("Test failed!")
    }
}

func test_prepare_5() {
    let expression_calculator = ExpressionCalculator()
    expression_calculator.prepare("(2+3)*4")
    let expected = ArrayList<String>(["2", "3", "+", "4", "*"])
    if (expression_calculator.postfix_stack != expected) {
        throw Exception("Test failed!")
    }
}

func test_prepare_6() {
    let expression_calculator = ExpressionCalculator()
    expression_calculator.prepare("")
    let expected = ArrayList<String>()
    if (expression_calculator.postfix_stack != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_prepare_1()
    test_prepare_2()
    test_prepare_3()
    test_prepare_4()
    test_prepare_5()
    test_prepare_6()
}
