import std.time.DateTime
import std.math.round

func test_string_to_datetime_1() {
    let timeutils = TimeUtils()
    let expected = DateTime.of(year: 2001, month: 7, dayOfMonth: 18, hour: 1, minute: 1, second: 1)
    if (timeutils.string_to_datetime("2001-07-18 01:01:01") != expected) {
        throw Exception("Test failed!")
    }
}

func test_string_to_datetime_2() {
    let timeutils = TimeUtils()
    let expected = DateTime.of(year: 2001, month: 7, dayOfMonth: 17, hour: 1, minute: 1, second: 1)
    if (timeutils.string_to_datetime("2001-07-17 01:01:01") != expected) {
        throw Exception("Test failed!")
    }
}

func test_string_to_datetime_3() {
    let timeutils = TimeUtils()
    let expected = DateTime.of(year: 2001, month: 7, dayOfMonth: 16, hour: 1, minute: 1, second: 1)
    if (timeutils.string_to_datetime("2001-07-16 01:01:01") != expected) {
        throw Exception("Test failed!")
    }
}

func test_string_to_datetime_4() {
    let timeutils = TimeUtils()
    let expected = DateTime.of(year: 2001, month: 7, dayOfMonth: 15, hour: 1, minute: 1, second: 1)
    if (timeutils.string_to_datetime("2001-07-15 01:01:01") != expected) {
        throw Exception("Test failed!")
    }
}

func test_string_to_datetime_5() {
    let timeutils = TimeUtils()
    let expected = DateTime.of(year: 2001, month: 7, dayOfMonth: 14, hour: 1, minute: 1, second: 1)
    if (timeutils.string_to_datetime("2001-07-14 01:01:01") != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_string_to_datetime_1()
    test_string_to_datetime_2()
    test_string_to_datetime_3()
    test_string_to_datetime_4()
    test_string_to_datetime_5()
}
