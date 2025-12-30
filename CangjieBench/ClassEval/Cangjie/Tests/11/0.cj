func test_add() {
    if (BitStatusUtil.add(2, 4) != 6) {
        throw Exception("Test failed!")
    }
}

func test_add_2() {
    if (BitStatusUtil.add(2, 0) != 2) {
        throw Exception("Test failed!")
    }
}

func test_add_3() {
    if (BitStatusUtil.add(0, 0) != 0) {
        throw Exception("Test failed!")
    }
}

func test_add_4() {
    if (BitStatusUtil.add(0, 2) != 2) {
        throw Exception("Test failed!")
    }
}

func test_add_5() {
    if (BitStatusUtil.add(2, 2) != 2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add()
    test_add_2()
    test_add_3()
    test_add_4()
    test_add_5()
}