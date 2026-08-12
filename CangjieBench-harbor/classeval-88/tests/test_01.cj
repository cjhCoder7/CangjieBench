import std.math.numeric.Decimal
import std.math.numeric.round
import std.math.abs

func test_factorial_1() {
    let tricalculator = TriCalculator()
    if (tricalculator.factorial(5) != Decimal(120)) {
        throw Exception("Test failed!")
    }
}

func test_factorial_2() {
    let tricalculator = TriCalculator()
    if (tricalculator.factorial(4) != Decimal(24)) {
        throw Exception("Test failed!")
    }
}

func test_factorial_3() {
    let tricalculator = TriCalculator()
    if (tricalculator.factorial(3) != Decimal(6)) {
        throw Exception("Test failed!")
    }
}

func test_factorial_4() {
    let tricalculator = TriCalculator()
    if (tricalculator.factorial(2) != Decimal(2)) {
        throw Exception("Test failed!")
    }
}

func test_factorial_5() {
    let tricalculator = TriCalculator()
    if (tricalculator.factorial(1) != Decimal(1)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_factorial_1()
    test_factorial_2()
    test_factorial_3()
    test_factorial_4()
    test_factorial_5()
}
