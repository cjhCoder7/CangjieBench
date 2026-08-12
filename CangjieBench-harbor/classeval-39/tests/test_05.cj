import std.math.numeric.Decimal
import std.regex.Regex
import std.collection.ArrayList

func test_transform_1() {
    let result = ExpressionCalculator.transform("2 + 3 * 4")
    if (result != "2+3*4") {
        throw Exception("Test failed!")
    }
}

func test_transform_2() {
    let result = ExpressionCalculator.transform("2 + 3 / 4")
    if (result != "2+3/4") {
        throw Exception("Test failed!")
    }
}

func test_transform_3() {
    let result = ExpressionCalculator.transform("2 - 3 * 4")
    if (result != "2-3*4") {
        throw Exception("Test failed!")
    }
}

func test_transform_4() {
    let result = ExpressionCalculator.transform("1 + 3 * 4")
    if (result != "1+3*4") {
        throw Exception("Test failed!")
    }
}

func test_transform_5() {
    let result = ExpressionCalculator.transform("-2 + (-3) * 4")
    if (result != "~2+(~3)*4") {
        throw Exception("Test failed!")
    }
}

func test_transform_6() {
    let result = ExpressionCalculator.transform("~(1 + 1)")
    if (result != "0-(1+1)") {
        throw Exception("Test failed!")
    }
}

main() {
    test_transform_1()
    test_transform_2()
    test_transform_3()
    test_transform_4()
    test_transform_5()
    test_transform_6()
}
