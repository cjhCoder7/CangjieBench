func test_taylor_1() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.taylor(60.0, 50) - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_taylor_2() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.taylor(30.0, 50) - 0.8660254037844386) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_taylor_3() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.taylor(90.0, 50) - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_taylor_4() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.taylor(0.0, 50) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_taylor_5() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.taylor(45.0, 50) - 0.7071067811865475) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_taylor_1()
    test_taylor_2()
    test_taylor_3()
    test_taylor_4()
    test_taylor_5()
}