func test_tan_1() {
    let tricalculator = TriCalculator()
    if (tricalculator.tan(45.0) == None) {
        throw Exception("Test failed!")
    }
    if (abs((tricalculator.tan(45.0) ?? 0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_tan_2() {
    let tricalculator = TriCalculator()
    if (tricalculator.tan(90.0) != None) {
        throw Exception("Test failed!")
    }
}

func test_tan_3() {
    let tricalculator = TriCalculator()
    if (tricalculator.tan(30.0) == None) {
        throw Exception("Test failed!")
    }
    if (abs((tricalculator.tan(30.0) ?? 0.0) - 0.5773502692) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_tan_4() {
    let tricalculator = TriCalculator()
    if (tricalculator.tan(60.0) == None) {
        throw Exception("Test failed!")
    }
    if (abs((tricalculator.tan(60.0) ?? 0.0) - 1.7320508076) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_tan_5() {
    let tricalculator = TriCalculator()
    if (tricalculator.tan(0.0) == None) {
        throw Exception("Test failed!")
    }
    if (abs((tricalculator.tan(0.0) ?? 0.0) - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_tan_1()
    test_tan_2()
    test_tan_3()
    test_tan_4()
    test_tan_5()
}