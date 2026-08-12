func test_remove() {
    if (BitStatusUtil.remove(6, 2) != 4) {
        throw Exception("Test failed!")
    }
}

func test_remove_2() {
    if (BitStatusUtil.remove(8, 2) != 8) {
        throw Exception("Test failed!")
    }
}

func test_remove_3() {
    if (BitStatusUtil.remove(6, 4) != 2) {
        throw Exception("Test failed!")
    }
}

func test_remove_4() {
    if (BitStatusUtil.remove(8, 6) != 8) {
        throw Exception("Test failed!")
    }
}

func test_remove_5() {
    if (BitStatusUtil.remove(6, 6) != 0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_remove()
    test_remove_2()
    test_remove_3()
    test_remove_4()
    test_remove_5()
}
