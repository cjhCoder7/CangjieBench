import std.math.numeric.Decimal
import std.math.numeric.round
import std.math.abs

func test_sin_1() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.sin(30.0) - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_sin_2() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.sin(60.0) - 0.8660254038) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_sin_3() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.sin(0.0) - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_sin_4() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.sin(90.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_sin_5() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.sin(45.0) - 0.7071067812) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_sin_1()
    test_sin_2()
    test_sin_3()
    test_sin_4()
    test_sin_5()
}
