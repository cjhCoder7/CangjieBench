import std.collection.ArrayList
import std.regex.Regex
import std.unicode.UnicodeStringExtension

func test_process_text_file_1() {
    let ss = SplitSentence()
    let cnt = ss.process_text_file("aaa aaaa. bb bbbb bbb? cccc ccccccc cc ccc. dd ddd?")
    if (cnt != 4) {
        throw Exception("Test failed!")
    }
}

func test_process_text_file_2() {
    let ss = SplitSentence()
    let cnt = ss.process_text_file("Mr. Smith is a teacher. Yes.")
    if (cnt != 5) {
        throw Exception("Test failed!")
    }
}

func test_process_text_file_3() {
    let ss = SplitSentence()
    let cnt = ss.process_text_file("Mr. Smith is a teacher. Yes 1 2 3 4 5 6.")
    if (cnt != 5) {
        throw Exception("Test failed!")
    }
}

func test_process_text_file_4() {
    let ss = SplitSentence()
    let cnt = ss.process_text_file("aaa aaaa. bb bbbb bbb? cccc ccccccc cc ccc.")
    if (cnt != 4) {
        throw Exception("Test failed!")
    }
}

func test_process_text_file_5() {
    let ss = SplitSentence()
    let cnt = ss.process_text_file("aaa aaaa. bb bbbb bbb?")
    if (cnt != 3) {
        throw Exception("Test failed!")
    }
}

main() {
    test_process_text_file_1()
    test_process_text_file_2()
    test_process_text_file_3()
    test_process_text_file_4()
    test_process_text_file_5()
}
