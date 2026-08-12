import std.convert.Parsable
import std.unicode.UnicodeStringExtension

func test_format_string_1() {
    let formatter = NumberWordFormatter()
    if (formatter.format_string("123456") != "ONE HUNDRED AND TWENTY THREE THOUSAND FOUR HUNDRED AND FIFTY SIX ONLY") {
        throw Exception("Test failed!")
    }
}

func test_format_string_2() {
    let formatter = NumberWordFormatter()
    if (formatter.format_string("1000") != "ONE THOUSAND ONLY") {
        throw Exception("Test failed!")
    }
}

func test_format_string_3() {
    let formatter = NumberWordFormatter()
    if (formatter.format_string("1000000") != "ONE MILLION ONLY") {
        throw Exception("Test failed!")
    }
}

func test_format_string_4() {
    let formatter = NumberWordFormatter()
    if (formatter.format_string("1.23") != "ONE AND CENTS TWENTY THREE ONLY") {
        throw Exception("Test failed!")
    }
}

func test_format_string_5() {
    let formatter = NumberWordFormatter()
    if (formatter.format_string("0") != "ZERO ONLY") {
        throw Exception("Test failed!")
    }
}

func test_format_string_6() {
    let formatter = NumberWordFormatter()
    if (formatter.format_string("10") != "TEN ONLY") {
        throw Exception("Test failed!")
    }
}

main() {
    test_format_string_1()
    test_format_string_2()
    test_format_string_3()
    test_format_string_4()
    test_format_string_5()
    test_format_string_6()
}
