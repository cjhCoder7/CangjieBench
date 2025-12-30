func test_get_current_date_1() {
    let timeutils = TimeUtils()
    if (timeutils.get_current_date() != timeutils.datetime.format("yyyy-MM-dd")) {
        throw Exception("Test failed!")
    }
}

func test_get_current_date_2() {
    let timeutils = TimeUtils()
    if (timeutils.get_current_date() != timeutils.datetime.format("yyyy-MM-dd")) {
        throw Exception("Test failed!")
    }
}

func test_get_current_date_3() {
    let timeutils = TimeUtils()
    if (timeutils.get_current_date() != timeutils.datetime.format("yyyy-MM-dd")) {
        throw Exception("Test failed!")
    }
}

func test_get_current_date_4() {
    let timeutils = TimeUtils()
    if (timeutils.get_current_date() != timeutils.datetime.format("yyyy-MM-dd")) {
        throw Exception("Test failed!")
    }
}

func test_get_current_date_5() {
    let timeutils = TimeUtils()
    if (timeutils.get_current_date() != timeutils.datetime.format("yyyy-MM-dd")) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_current_date_1()
    test_get_current_date_2()
    test_get_current_date_3()
    test_get_current_date_4()
    test_get_current_date_5()
}