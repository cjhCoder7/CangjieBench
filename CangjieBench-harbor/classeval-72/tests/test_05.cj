import std.regex.Regex
import std.collection.ArrayList

func test_generate_phone_number_pattern_1() {
    let ru = RegexUtils()
    let pat = ru.generate_phone_number_pattern()
    let res = ru.match_regex(pat, "123-456-7890")
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_generate_phone_number_pattern_2() {
    let ru = RegexUtils()
    let pat = ru.generate_phone_number_pattern()
    let res = ru.match_regex(pat, "1234567890")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_generate_phone_number_pattern_3() {
    let ru = RegexUtils()
    let pat = ru.generate_phone_number_pattern()
    let res = ru.match_regex(pat, "123-456-789")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_generate_phone_number_pattern_4() {
    let ru = RegexUtils()
    let pat = ru.generate_phone_number_pattern()
    let res = ru.match_regex(pat, "a23-456-7890")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_generate_phone_number_pattern_5() {
    let ru = RegexUtils()
    let pat = ru.generate_phone_number_pattern()
    let res = ru.match_regex(pat, "1234-56-7890")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_generate_phone_number_pattern_1()
    test_generate_phone_number_pattern_2()
    test_generate_phone_number_pattern_3()
    test_generate_phone_number_pattern_4()
    test_generate_phone_number_pattern_5()
}
