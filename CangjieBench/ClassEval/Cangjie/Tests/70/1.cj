func test_validate_sex_1() {
    let pr = PersonRequest("John Doe", "Unknown", "12345678901")
    if (pr.sex != None) {
        throw Exception("Test failed!")
    }
}

func test_validate_sex_2() {
    let pr = PersonRequest("John Doe", "UGM", "12345678901")
    if (pr.sex != "UGM") {
        throw Exception("Test failed!")
    }
}

func test_validate_sex_3() {
    let pr = PersonRequest("John Doe", "Man", "12345678901")
    if (pr.sex != "Man") {
        throw Exception("Test failed!")
    }
}

func test_validate_sex_4() {
    let pr = PersonRequest("John Doe", "Woman", "12345678901")
    if (pr.sex != "Woman") {
        throw Exception("Test failed!")
    }
}

func test_validate_sex_5() {
    let pr = PersonRequest("John Doe", "khsigy", "12345678901")
    if (pr.sex != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_validate_sex_1()
    test_validate_sex_2()
    test_validate_sex_3()
    test_validate_sex_4()
    test_validate_sex_5()
}