import std.math.numeric.Decimal
import std.math.numeric.round
import std.math.abs

func test_cos_1() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.cos(60.0) - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_cos_2() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.cos(30.0) - 0.8660254038) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_cos_3() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.cos(0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_cos_4() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.cos(90.0) - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_cos_5() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.cos(45.0) - 0.7071067812) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_cos_1()
    test_cos_2()
    test_cos_3()
    test_cos_4()
    test_cos_5()
}
