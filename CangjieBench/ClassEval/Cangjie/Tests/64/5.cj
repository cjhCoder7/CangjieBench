func test_hex_to_decimal() {
    if (NumberConverter.hex_to_decimal("a5b7") != 42423) {
        throw Exception("Test failed!")
    }
}

func test_hex_to_decimal_2() {
    if (NumberConverter.hex_to_decimal("52d7") != 21207) {
        throw Exception("Test failed!")
    }
}

func test_hex_to_decimal_3() {
    if (NumberConverter.hex_to_decimal("14a93") != 84627) {
        throw Exception("Test failed!")
    }
}

func test_hex_to_decimal_4() {
    if (NumberConverter.hex_to_decimal("29a77") != 170615) {
        throw Exception("Test failed!")
    }
}

func test_hex_to_decimal_5() {
    if (NumberConverter.hex_to_decimal("53a77") != 342647) {
        throw Exception("Test failed!")
    }
}

main() {
    test_hex_to_decimal()
    test_hex_to_decimal_2()
    test_hex_to_decimal_3()
    test_hex_to_decimal_4()
    test_hex_to_decimal_5()
}