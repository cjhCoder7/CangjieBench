func test_octal_to_decimal() {
    if (NumberConverter.octal_to_decimal("122667") != 42423) {
        throw Exception("Test failed!")
    }
}

func test_octal_to_decimal_2() {
    if (NumberConverter.octal_to_decimal("51427") != 21271) {
        throw Exception("Test failed!")
    }
}

func test_octal_to_decimal_3() {
    if (NumberConverter.octal_to_decimal("245653") != 84907) {
        throw Exception("Test failed!")
    }
}

func test_octal_to_decimal_4() {
    if (NumberConverter.octal_to_decimal("513527") != 169815) {
        throw Exception("Test failed!")
    }
}

func test_octal_to_decimal_5() {
    if (NumberConverter.octal_to_decimal("1227256") != 339630) {
        throw Exception("Test failed!")
    }
}

main() {
    test_octal_to_decimal()
    test_octal_to_decimal_2()
    test_octal_to_decimal_3()
    test_octal_to_decimal_4()
    test_octal_to_decimal_5()
}