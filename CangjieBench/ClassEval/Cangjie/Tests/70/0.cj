func test_validate_name_1() {
    let pr = PersonRequest("", "Man", "12345678901")
    if (pr.name != None) {
        throw Exception("Test failed!")
    }
}

func test_validate_name_2() {
    let pr = PersonRequest("This is a very long name that exceeds the character limit", "Man", "12345678901")
    if (pr.name != None) {
        throw Exception("Test failed!")
    }
}

func test_validate_name_3() {
    let pr = PersonRequest("aaa", "Man", "12345678901")
    if (pr.name != "aaa") {
        throw Exception("Test failed!")
    }
}

func test_validate_name_4() {
    let pr = PersonRequest("bbb", "Man", "12345678901")
    if (pr.name != "bbb") {
        throw Exception("Test failed!")
    }
}

func test_validate_name_5() {
    let pr = PersonRequest("ccc", "Man", "12345678901")
    if (pr.name != "ccc") {
        throw Exception("Test failed!")
    }
}

main() {
    test_validate_name_1()
    test_validate_name_2()
    test_validate_name_3()
    test_validate_name_4()
    test_validate_name_5()
}