func test_main() {
    if (BitStatusUtil.add(2, 4) != 6) {
        throw Exception("Test failed!")
    }
    if (!BitStatusUtil.has(6, 2)) {
        throw Exception("Test failed!")
    }
    if (BitStatusUtil.remove(6, 2) != 4) {
        throw Exception("Test failed!")
    }
    try {
        BitStatusUtil.check([2, 3, 4])
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "3 not even") {
            throw Exception("Test failed!")
        }
    }
}


main() {
    test_main()
}
