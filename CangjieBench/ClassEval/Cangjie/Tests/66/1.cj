func test_is_hex_char_1() {
    let res = NumericEntityUnescaper.is_hex_char(r'0')
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_is_hex_char_2() {
    let res = NumericEntityUnescaper.is_hex_char(r'F')
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_is_hex_char_3() {
    let res = NumericEntityUnescaper.is_hex_char(r'G')
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_is_hex_char_4() {
    let res = NumericEntityUnescaper.is_hex_char(r'X')
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_is_hex_char_5() {
    let res = NumericEntityUnescaper.is_hex_char(r'Z')
    if (res != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_hex_char_1()
    test_is_hex_char_2()
    test_is_hex_char_3()
    test_is_hex_char_4()
    test_is_hex_char_5()
}