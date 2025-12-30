func test_validate_phone_number_1() {
    let ru = RegexUtils()
    let res = ru.validate_phone_number("123-456-7890")
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_validate_phone_number_2() {
    let ru = RegexUtils()
    let res = ru.validate_phone_number("1234567890")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_validate_phone_number_3() {
    let ru = RegexUtils()
    let res = ru.validate_phone_number("a23-456-7890")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_validate_phone_number_4() {
    let ru = RegexUtils()
    let res = ru.validate_phone_number("123-456-789")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_validate_phone_number_5() {
    let ru = RegexUtils()
    let res = ru.validate_phone_number("1234-56-789")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_validate_phone_number_1()
    test_validate_phone_number_2()
    test_validate_phone_number_3()
    test_validate_phone_number_4()
    test_validate_phone_number_5()
}