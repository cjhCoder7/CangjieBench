import std.time.DateTime
import std.math.round

func test_timeutils() {
    let timeutils = TimeUtils()
    
    // Test get_current_time
    if (timeutils.get_current_time() != timeutils.datetime.format("HH:mm:ss")) {
        throw Exception("Test failed!")
    }
    
    // Test get_current_date
    if (timeutils.get_current_date() != timeutils.datetime.format("yyyy-MM-dd")) {
        throw Exception("Test failed!")
    }
    
    // Test add_seconds
    let expected_add_seconds = timeutils.datetime.addSeconds(600).format("HH:mm:ss")
    if (timeutils.add_seconds(600) != expected_add_seconds) {
        throw Exception("Test failed!")
    }
    
    // Test string_to_datetime
    let expected_datetime = DateTime.of(year: 2001, month: 7, dayOfMonth: 18, hour: 1, minute: 1, second: 1)
    if (timeutils.string_to_datetime("2001-07-18 01:01:01") != expected_datetime) {
        throw Exception("Test failed!")
    }
    
    // Test datetime_to_string
    if (timeutils.datetime_to_string(timeutils.datetime) != timeutils.datetime.format("yyyy-MM-dd HH:mm:ss")) {
        throw Exception("Test failed!")
    }
    
    // Test get_minutes
    if (timeutils.get_minutes("2001-07-18 01:01:01", "2001-07-18 02:01:01") != 60) {
        throw Exception("Test failed!")
    }
    
    // Test get_format_time
    if (timeutils.get_format_time(2001, 7, 18, 1, 1, 1) != "2001-07-18 01:01:01") {
        throw Exception("Test failed!")
    }
}

main() {
    test_timeutils()
}
