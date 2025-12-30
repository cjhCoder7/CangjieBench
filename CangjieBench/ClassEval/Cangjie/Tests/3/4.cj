func test_factorial_1() {
    let res = ArrangementCalculator.factorial(4)
    if (res != 24) {
        throw Exception("Test failed!")
    }
}

func test_factorial_2() {
    let res = ArrangementCalculator.factorial(5)
    if (res != 120) {
        throw Exception("Test failed!")
    }
}

func test_factorial_3() {
    let res = ArrangementCalculator.factorial(3)
    if (res != 6) {
        throw Exception("Test failed!")
    }
}

func test_factorial_4() {
    let res = ArrangementCalculator.factorial(2)
    if (res != 2) {
        throw Exception("Test failed!")
    }
}

func test_factorial_5() {
    let res = ArrangementCalculator.factorial(1)
    if (res != 1) {
        throw Exception("Test failed!")
    }
}

main() {
    test_factorial_1()
    test_factorial_2()
    test_factorial_3()
    test_factorial_4()
    test_factorial_5()
}