import std.math.abs

func test_divide() {
    let result = ComplexCalculator.divide(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0))
    let expected = ComplexNumber(0.44, 0.08)
    if (abs(result.real - expected.real) > 0.01 || abs(result.imaginary - expected.imaginary) > 0.01) {
        print("Test failed!")
    }
}

func test_divide_2() {
    let result = ComplexCalculator.divide(ComplexNumber(-1.0, -2.0), ComplexNumber(-3.0, -4.0))
    let expected = ComplexNumber(0.44, 0.08)
    if (abs(result.real - expected.real) > 0.01 || abs(result.imaginary - expected.imaginary) > 0.01) {
        print("Test failed!")
    }
}

func test_divide_3() {
    let result = ComplexCalculator.divide(ComplexNumber(1.0, -2.0), ComplexNumber(3.0, -4.0))
    let expected = ComplexNumber(0.44, -0.08)
    if (abs(result.real - expected.real) > 0.01 || abs(result.imaginary - expected.imaginary) > 0.01) {
        print("Test failed!")
    }
}

func test_divide_4() {
    let result = ComplexCalculator.divide(ComplexNumber(-1.0, 2.0), ComplexNumber(-3.0, 4.0))
    let expected = ComplexNumber(0.44, -0.08)
    if (abs(result.real - expected.real) > 0.01 || abs(result.imaginary - expected.imaginary) > 0.01) {
        print("Test failed!")
    }
}

func test_divide_5() {
    let result = ComplexCalculator.divide(ComplexNumber(1.0, 2.0), ComplexNumber(-1.0, -2.0))
    let expected = ComplexNumber(-1.0, 0.0)
    if (abs(result.real - expected.real) > 0.01 || abs(result.imaginary - expected.imaginary) > 0.01) {
        print("Test failed!")
    }
}

main() {
    test_divide()
    test_divide_2()
    test_divide_3()
    test_divide_4()
    test_divide_5()
}
