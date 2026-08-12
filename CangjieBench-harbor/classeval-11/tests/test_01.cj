func test_has() {
    if (!BitStatusUtil.has(6, 2)) {
        throw Exception("Test failed!")
    }
}

func test_has_2() {
    if (BitStatusUtil.has(8, 2)) {
        throw Exception("Test failed!")
    }
}

func test_has_3() {
    if (!BitStatusUtil.has(6, 4)) {
        throw Exception("Test failed!")
    }
}

func test_has_4() {
    if (BitStatusUtil.has(8, 6)) {
        throw Exception("Test failed!")
    }
}

func test_has_5() {
    if (!BitStatusUtil.has(6, 6)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_has()
    test_has_2()
    test_has_3()
    test_has_4()
    test_has_5()
}
