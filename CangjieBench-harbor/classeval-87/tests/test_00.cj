import std.time.DateTime
import std.math.round

func test_get_current_time_1() {
    let timeutils = TimeUtils()
    if (timeutils.get_current_time() != timeutils.datetime.format("HH:mm:ss")) {
        throw Exception("Test failed!")
    }
}

func test_get_current_time_2() {
    let timeutils = TimeUtils()
    if (timeutils.get_current_time() != timeutils.datetime.format("HH:mm:ss")) {
        throw Exception("Test failed!")
    }
}

func test_get_current_time_3() {
    let timeutils = TimeUtils()
    if (timeutils.get_current_time() != timeutils.datetime.format("HH:mm:ss")) {
        throw Exception("Test failed!")
    }
}

func test_get_current_time_4() {
    let timeutils = TimeUtils()
    if (timeutils.get_current_time() != timeutils.datetime.format("HH:mm:ss")) {
        throw Exception("Test failed!")
    }
}

func test_get_current_time_5() {
    let timeutils = TimeUtils()
    if (timeutils.get_current_time() != timeutils.datetime.format("HH:mm:ss")) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_current_time_1()
    test_get_current_time_2()
    test_get_current_time_3()
    test_get_current_time_4()
    test_get_current_time_5()
}
