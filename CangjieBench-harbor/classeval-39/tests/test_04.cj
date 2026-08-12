import std.math.numeric.Decimal
import std.regex.Regex
import std.collection.ArrayList

func test_calculate_method_1() {
    let result = ExpressionCalculator._calculate(Decimal.parse("2"), Decimal.parse("3"), "+")
    if (result.toFloat64() != 5.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_method_2() {
    let result = ExpressionCalculator._calculate(Decimal.parse("3"), Decimal.parse("2"), "-")
    if (result.toFloat64() != 1.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_method_3() {
    let result = ExpressionCalculator._calculate(Decimal.parse("2"), Decimal.parse("3"), "*")
    if (result.toFloat64() != 6.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_method_4() {
    let result = ExpressionCalculator._calculate(Decimal.parse("3"), Decimal.parse("3"), "/")
    if (result.toFloat64() != 1.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_method_5() {
    let result = ExpressionCalculator._calculate(Decimal.parse("6"), Decimal.parse("2"), "/")
    if (result.toFloat64() != 3.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_method_6() {
    let result = ExpressionCalculator._calculate(Decimal.parse("6"), Decimal.parse("2"), "%")
    if (result.toFloat64() != 0.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_method_7() {
    try {
        ExpressionCalculator._calculate(Decimal.parse("6"), Decimal.parse("2"), "??")
        throw Exception("Test failed!")
    } catch (e: Exception) {
        // Expected exception
    }
}

main() {
    test_calculate_method_1()
    test_calculate_method_2()
    test_calculate_method_3()
    test_calculate_method_4()
    test_calculate_method_5()
    test_calculate_method_6()
    test_calculate_method_7()
}
