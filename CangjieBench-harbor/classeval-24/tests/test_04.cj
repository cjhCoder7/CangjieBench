import std.math.abs

func test_main() {
    if (ComplexCalculator.add(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0)) != ComplexNumber(4.0, 6.0)) {
        print("Test failed!")
    }
    if (ComplexCalculator.subtract(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0)) != ComplexNumber(-2.0, -2.0)) {
        print("Test failed!")
    }
    if (ComplexCalculator.multiply(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0)) != ComplexNumber(-5.0, 10.0)) {
        print("Test failed!")
    }
    let result = ComplexCalculator.divide(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0))
    let expected = ComplexNumber(0.44, 0.08)
    if (abs(result.real - expected.real) > 0.01 || abs(result.imaginary - expected.imaginary) > 0.01) {
        print("Test failed!")
    }
}

main() {
    test_main()
}
