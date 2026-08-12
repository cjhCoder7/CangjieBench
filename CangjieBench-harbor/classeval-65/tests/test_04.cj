import std.convert.Parsable
import std.unicode.UnicodeStringExtension

func test_parse_more_1() {
    let formatter = NumberWordFormatter()
    if (formatter.parse_more(0) != "") {
        throw Exception("Test failed!")
    }
}

func test_parse_more_2() {
    let formatter = NumberWordFormatter()
    if (formatter.parse_more(1) != "THOUSAND") {
        throw Exception("Test failed!")
    }
}

func test_parse_more_3() {
    let formatter = NumberWordFormatter()
    if (formatter.parse_more(2) != "MILLION") {
        throw Exception("Test failed!")
    }
}

func test_parse_more_4() {
    let formatter = NumberWordFormatter()
    if (formatter.parse_more(3) != "BILLION") {
        throw Exception("Test failed!")
    }
}

main() {
    test_parse_more_1()
    test_parse_more_2()
    test_parse_more_3()
    test_parse_more_4()
}
