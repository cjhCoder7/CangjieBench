func test_match_1() {
    let ru = RegexUtils()
    let res = ru.match_regex(#'\b\d{3}-\d{3}-\d{4}\b'#, "123-456-7890")
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_match_2() {
    let ru = RegexUtils()
    let res = ru.match_regex(#'\b\d{3}-\d{3}-\d{4}\b'#, "1234567890")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_match_3() {
    let ru = RegexUtils()
    let res = ru.match_regex(#'\b\d{3}-\d{3}-\d{4}\b'#, "111-111-1111")
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_match_4() {
    let ru = RegexUtils()
    let res = ru.match_regex(#'\b\d{3}-\d{3}-\d{4}\b'#, "123-456-789")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_match_5() {
    let ru = RegexUtils()
    let res = ru.match_regex(#'\b\d{3}-\d{3}-\d{4}\b'#, "123-456-789a")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_match_1()
    test_match_2()
    test_match_3()
    test_match_4()
    test_match_5()
}