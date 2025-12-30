func test_validate_phoneNumber_1() {
    let pr = PersonRequest("John Doe", "Man", "")
    if (pr.phoneNumber != None) {
        throw Exception("Test failed!")
    }
}

func test_validate_phoneNumber_2() {
    let pr = PersonRequest("John Doe", "Man", "12345")
    if (pr.phoneNumber != None) {
        throw Exception("Test failed!")
    }
}

func test_validate_phoneNumber_3() {
    let pr = PersonRequest("John Doe", "Man", "jgdjrj")
    if (pr.phoneNumber != None) {
        throw Exception("Test failed!")
    }
}

func test_validate_phoneNumber_4() {
    let pr = PersonRequest("John Doe", "Man", "12345678901")
    if (pr.phoneNumber != "12345678901") {
        throw Exception("Test failed!")
    }
}

func test_validate_phoneNumber_5() {
    let pr = PersonRequest("John Doe", "Man", "11111111111")
    if (pr.phoneNumber != "11111111111") {
        throw Exception("Test failed!")
    }
}

main() {
    test_validate_phoneNumber_1()
    test_validate_phoneNumber_2()
    test_validate_phoneNumber_3()
    test_validate_phoneNumber_4()
    test_validate_phoneNumber_5()
}