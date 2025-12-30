func test_subtract() {
    if (ComplexCalculator.subtract(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0)) != ComplexNumber(-2.0, -2.0)) {
        print("Test failed!")
    }
}

func test_subtract_2() {
    if (ComplexCalculator.subtract(ComplexNumber(-1.0, -2.0), ComplexNumber(-3.0, -4.0)) != ComplexNumber(2.0, 2.0)) {
        print("Test failed!")
    }
}

func test_subtract_3() {
    if (ComplexCalculator.subtract(ComplexNumber(1.0, -2.0), ComplexNumber(3.0, -4.0)) != ComplexNumber(-2.0, 2.0)) {
        print("Test failed!")
    }
}

func test_subtract_4() {
    if (ComplexCalculator.subtract(ComplexNumber(-1.0, 2.0), ComplexNumber(-3.0, 4.0)) != ComplexNumber(2.0, -2.0)) {
        print("Test failed!")
    }
}

func test_subtract_5() {
    if (ComplexCalculator.subtract(ComplexNumber(1.0, 2.0), ComplexNumber(1.0, 2.0)) != ComplexNumber(0.0, 0.0)) {
        print("Test failed!")
    }
}

main() {
    test_subtract()
    test_subtract_2()
    test_subtract_3()
    test_subtract_4()
    test_subtract_5()
}