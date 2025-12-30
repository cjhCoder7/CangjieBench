func test_calculate_1() {
    let calculator = Calculator()
    let res = calculator.calculate("1+2")
    if (res != 3.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_2() {
    let calculator = Calculator()
    let res = calculator.calculate("1+2*3")
    if (res != 7.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_3() {
    let calculator = Calculator()
    let res = calculator.calculate("1+2*3+4")
    if (res != 11.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_4() {
    let calculator = Calculator()
    let res = calculator.calculate("1+2^3*2+4*5")
    if (res != 37.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_5() {
    let calculator = Calculator()
    let res = calculator.calculate("1+2+3")
    if (res != 6.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_6() {
    let calculator = Calculator()
    let res = calculator.calculate("(1+2)+3")
    if (res != 6.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_7() {
    let calculator = Calculator()
    let res = calculator.calculate("")
    if (res != None) {
        throw Exception("Test failed!")
    }
}

func test_calculate_8() {
    let calculator = Calculator()
    let res = calculator.calculate("1+2?")
    if (res != 3.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_1()
    test_calculate_2()
    test_calculate_3()
    test_calculate_4()
    test_calculate_5()
    test_calculate_6()
    test_calculate_7()
    test_calculate_8()
}