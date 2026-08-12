func test_check() {
    BitStatusUtil.check([2])
}

func test_check_2() {
    try {
        BitStatusUtil.check([3])
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "3 not even") {
            throw Exception("Test failed!")
        }
    }
}

func test_check_3() {
    try {
        BitStatusUtil.check([-1])
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "-1 must be greater than or equal to 0") {
            throw Exception("Test failed!")
        }
    }
}

func test_check_4() {
    try {
        BitStatusUtil.check([2, 3, 4])
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "3 not even") {
            throw Exception("Test failed!")
        }
    }
}

func test_check_5() {
    try {
        BitStatusUtil.check([2, 3, 4, 5])
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "3 not even") {
            throw Exception("Test failed!")
        }
    }
}

main() {
    test_check()
    test_check_2()
    test_check_3()
    test_check_4()
    test_check_5()
}
