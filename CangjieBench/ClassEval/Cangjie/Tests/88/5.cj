func test_tricalculator() {
    let tricalculator = TriCalculator()
    if (abs(tricalculator.cos(60.0) - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
    if (abs(tricalculator.taylor(60.0, 50) - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
    if (abs(tricalculator.sin(30.0) - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
    if (tricalculator.tan(45.0) == None) {
        throw Exception("Test failed!")
    }
    if (abs((tricalculator.tan(45.0) ?? 0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
    if (tricalculator.tan(90.0) != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_tricalculator()
}