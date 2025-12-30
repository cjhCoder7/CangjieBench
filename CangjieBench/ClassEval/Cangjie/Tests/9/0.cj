func test_add() {
    if (BigNumCalculator.add("12345678901234567890", "98765432109876543210") != "111111111011111111100") {
        throw Exception("Test failed!")
    }
}

func test_add_2() {
    if (BigNumCalculator.add("123456789012345678922", "98765432109876543210") != "222222221122222222132") {
        throw Exception("Test failed!")
    }
}

func test_add_3() {
    if (BigNumCalculator.add("123456789012345678934", "98765432109876543210") != "222222221122222222144") {
        throw Exception("Test failed!")
    }
}

func test_add_4() {
    if (BigNumCalculator.add("123456789012345678946", "98765432109876543210") != "222222221122222222156") {
        throw Exception("Test failed!")
    }
}

func test_add_5() {
    if (BigNumCalculator.add("123456789012345678958", "98765432109876543210") != "222222221122222222168") {
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