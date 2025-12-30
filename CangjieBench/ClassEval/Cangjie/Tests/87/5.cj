func test_get_minutes_1() {
    let timeutils = TimeUtils()
    if (timeutils.get_minutes("2001-07-18 01:01:01", "2001-07-18 02:01:01") != 60) {
        throw Exception("Test failed!")
    }
}

func test_get_minutes_2() {
    let timeutils = TimeUtils()
    if (timeutils.get_minutes("2001-07-18 01:01:01", "2001-07-18 03:01:01") != 120) {
        throw Exception("Test failed!")
    }
}

func test_get_minutes_3() {
    let timeutils = TimeUtils()
    if (timeutils.get_minutes("2001-07-18 01:01:01", "2001-07-18 04:01:01") != 180) {
        throw Exception("Test failed!")
    }
}

func test_get_minutes_4() {
    let timeutils = TimeUtils()
    if (timeutils.get_minutes("2001-07-18 01:01:01", "2001-07-18 05:01:01") != 240) {
        throw Exception("Test failed!")
    }
}

func test_get_minutes_5() {
    let timeutils = TimeUtils()
    if (timeutils.get_minutes("2001-07-18 01:01:01", "2001-07-18 06:01:01") != 300) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_minutes_1()
    test_get_minutes_2()
    test_get_minutes_3()
    test_get_minutes_4()
    test_get_minutes_5()
}