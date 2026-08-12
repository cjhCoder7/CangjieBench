import std.collection.HashMap
import std.collection.ArrayList
import std.convert.Parsable

func test_precedence_1() {
    let calculator = Calculator()
    let res1 = calculator.precedence("+")
    let res2 = calculator.precedence("-")
    if (res1 != res2) {
        throw Exception("Test failed!")
    }
}

func test_precedence_2() {
    let calculator = Calculator()
    let res1 = calculator.precedence("*")
    let res2 = calculator.precedence("/")
    if (res1 != res2) {
        throw Exception("Test failed!")
    }
}

func test_precedence_3() {
    let calculator = Calculator()
    let res1 = calculator.precedence("+")
    let res2 = calculator.precedence("/")
    if (res1 == res2) {
        throw Exception("Test failed!")
    }
}

func test_precedence_4() {
    let calculator = Calculator()
    let res1 = calculator.precedence("+")
    let res2 = calculator.precedence("/")
    if (res1 == res2) {
        throw Exception("Test failed!")
    }
}

func test_precedence_5() {
    let calculator = Calculator()
    let res1 = calculator.precedence("*")
    let res2 = calculator.precedence("-")
    if (res1 == res2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_precedence_1()
    test_precedence_2()
    test_precedence_3()
    test_precedence_4()
    test_precedence_5()
}
