import std.collection.ArrayList
import std.regex.Regex
import std.unicode.UnicodeStringExtension

func test_SplitSentence() {
    let ss = SplitSentence()
    let lst = ss.split_sentences("aaa aaaa. bb bbbb bbb? cccc cccc. dd ddd?")
    let expected_lst = ArrayList<String>(["aaa aaaa.", "bb bbbb bbb?", "cccc cccc.", "dd ddd?"])
    if (lst != expected_lst) {
        throw Exception("Test failed!")
    }

    let cnt = ss.count_words("abc def")
    if (cnt != 2) {
        throw Exception("Test failed!")
    }

    let file_cnt = ss.process_text_file("aaa aaaa. bb bbbb bbb? cccc ccccccc cc ccc. dd ddd?")
    if (file_cnt != 4) {
        throw Exception("Test failed!")
    }
}

main() {
    test_SplitSentence()
}
