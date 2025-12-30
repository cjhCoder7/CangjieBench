func test_decimal_to_hex() {
    if (NumberConverter.decimal_to_hex(42423) != "a5b7") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_hex_2() {
    if (NumberConverter.decimal_to_hex(21271) != "5317") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_hex_3() {
    if (NumberConverter.decimal_to_hex(84907) != "14bab") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_hex_4() {
    if (NumberConverter.decimal_to_hex(169815) != "29757") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_hex_5() {
    if (NumberConverter.decimal_to_hex(339639) != "52eb7") {
        throw Exception("Test failed!")
    }
}

main() {
    test_decimal_to_hex()
    test_decimal_to_hex_2()
    test_decimal_to_hex_3()
    test_decimal_to_hex_4()
    test_decimal_to_hex_5()
}