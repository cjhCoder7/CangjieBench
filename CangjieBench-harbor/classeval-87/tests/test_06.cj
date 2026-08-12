import std.time.DateTime
import std.math.round

func test_get_format_time_1() {
    let timeutils = TimeUtils()
    if (timeutils.get_format_time(2001, 7, 18, 1, 1, 1) != "2001-07-18 01:01:01") {
        throw Exception("Test failed!")
    }
}

func test_get_format_time_2() {
    let timeutils = TimeUtils()
    if (timeutils.get_format_time(2001, 7, 17, 1, 1, 1) != "2001-07-17 01:01:01") {
        throw Exception("Test failed!")
    }
}

func test_get_format_time_3() {
    let timeutils = TimeUtils()
    if (timeutils.get_format_time(2001, 7, 16, 1, 1, 1) != "2001-07-16 01:01:01") {
        throw Exception("Test failed!")
    }
}

func test_get_format_time_4() {
    let timeutils = TimeUtils()
    if (timeutils.get_format_time(2001, 7, 15, 1, 1, 1) != "2001-07-15 01:01:01") {
        throw Exception("Test failed!")
    }
}

func test_get_format_time_5() {
    let timeutils = TimeUtils()
    if (timeutils.get_format_time(2001, 7, 14, 1, 1, 1) != "2001-07-14 01:01:01") {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_format_time_1()
    test_get_format_time_2()
    test_get_format_time_3()
    test_get_format_time_4()
    test_get_format_time_5()
}
