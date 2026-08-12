import std.collection.ArrayList
import std.regex.Regex
import std.unicode.UnicodeStringExtension

func test_split_sentences_1() {
    let ss = SplitSentence()
    let lst = ss.split_sentences("aaa aaaa. bb bbbb bbb? cccc cccc. dd ddd?")
    let expected = ArrayList<String>(["aaa aaaa.", "bb bbbb bbb?", "cccc cccc.", "dd ddd?"])
    if (lst != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_sentences_2() {
    let ss = SplitSentence()
    let lst = ss.split_sentences("Who is Mr. Smith? He is a teacher.")
    let expected = ArrayList<String>(["Who is Mr. Smith?", "He is a teacher."])
    if (lst != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_sentences_3() {
    let ss = SplitSentence()
    let lst = ss.split_sentences("Who is A.B.C.? He is a teacher.")
    let expected = ArrayList<String>(["Who is A.B.C.?", "He is a teacher."])
    if (lst != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_sentences_4() {
    let ss = SplitSentence()
    let lst = ss.split_sentences("aaa aaaa. bb bbbb bbb? cccc cccc.")
    let expected = ArrayList<String>(["aaa aaaa.", "bb bbbb bbb?", "cccc cccc."])
    if (lst != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_sentences_5() {
    let ss = SplitSentence()
    let lst = ss.split_sentences("aaa aaaa. bb bbbb bbb?")
    let expected = ArrayList<String>(["aaa aaaa.", "bb bbbb bbb?"])
    if (lst != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_split_sentences_1()
    test_split_sentences_2()
    test_split_sentences_3()
    test_split_sentences_4()
    test_split_sentences_5()
}
