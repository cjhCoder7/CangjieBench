import std.regex.Regex
import std.collection.ArrayList

func test_generate_email_pattern_1() {
    let ru = RegexUtils()
    let pat = ru.generate_email_pattern()
    let res = ru.match_regex(pat, "iustd87t2euh@163.com")
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_generate_email_pattern_2() {
    let ru = RegexUtils()
    let pat = ru.generate_email_pattern()
    let res = ru.match_regex(pat, "iustd87t2euhifg.com")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_generate_email_pattern_3() {
    let ru = RegexUtils()
    let pat = ru.generate_email_pattern()
    let res = ru.match_regex(pat, "iustd87t2euhifg@.com")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_generate_email_pattern_4() {
    let ru = RegexUtils()
    let pat = ru.generate_email_pattern()
    let res = ru.match_regex(pat, "iustd87t2euhifg@.")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_generate_email_pattern_5() {
    let ru = RegexUtils()
    let pat = ru.generate_email_pattern()
    let res = ru.match_regex(pat, "iustd87t2euhifg@com.")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_generate_email_pattern_1()
    test_generate_email_pattern_2()
    test_generate_email_pattern_3()
    test_generate_email_pattern_4()
    test_generate_email_pattern_5()
}
