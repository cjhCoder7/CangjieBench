func test_multiply() {
    if (ComplexCalculator.multiply(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0)) != ComplexNumber(-5.0, 10.0)) {
        print("Test failed!")
    }
}

func test_multiply_2() {
    if (ComplexCalculator.multiply(ComplexNumber(-1.0, -2.0), ComplexNumber(-3.0, -4.0)) != ComplexNumber(-5.0, 10.0)) {
        print("Test failed!")
    }
}

func test_multiply_3() {
    if (ComplexCalculator.multiply(ComplexNumber(1.0, -2.0), ComplexNumber(3.0, -4.0)) != ComplexNumber(-5.0, -10.0)) {
        print("Test failed!")
    }
}

func test_multiply_4() {
    if (ComplexCalculator.multiply(ComplexNumber(-1.0, 2.0), ComplexNumber(-3.0, 4.0)) != ComplexNumber(-5.0, -10.0)) {
        print("Test failed!")
    }
}

func test_multiply_5() {
    if (ComplexCalculator.multiply(ComplexNumber(1.0, 2.0), ComplexNumber(-1.0, -2.0)) != ComplexNumber(3.0, -4.0)) {
        print("Test failed!")
    }
}

main() {
    test_multiply()
    test_multiply_2()
    test_multiply_3()
    test_multiply_4()
    test_multiply_5()
}