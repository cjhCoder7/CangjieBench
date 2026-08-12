import std.math.abs

func test_add() {
    if (ComplexCalculator.add(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0)) != ComplexNumber(4.0, 6.0)) {
        print("Test failed!")
    }
}

func test_add_2() {
    if (ComplexCalculator.add(ComplexNumber(-1.0, -2.0), ComplexNumber(-3.0, -4.0)) != ComplexNumber(-4.0, -6.0)) {
        print("Test failed!")
    }
}

func test_add_3() {
    if (ComplexCalculator.add(ComplexNumber(1.0, -2.0), ComplexNumber(3.0, -4.0)) != ComplexNumber(4.0, -6.0)) {
        print("Test failed!")
    }
}

func test_add_4() {
    if (ComplexCalculator.add(ComplexNumber(-1.0, 2.0), ComplexNumber(-3.0, 4.0)) != ComplexNumber(-4.0, 6.0)) {
        print("Test failed!")
    }
}

func test_add_5() {
    if (ComplexCalculator.add(ComplexNumber(1.0, 2.0), ComplexNumber(-1.0, -2.0)) != ComplexNumber(0.0, 0.0)) {
        print("Test failed!")
    }
}

main() {
    test_add()
    test_add_2()
    test_add_3()
    test_add_4()
    test_add_5()
}
