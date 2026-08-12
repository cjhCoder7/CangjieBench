import std.regex.Regex
import std.collection.ArrayList

func test_split_sentences_1() {
    let ru = RegexUtils()
    let res = ru.split_sentences("Aaa. Bbbb? Ccc!")
    let expected = ArrayList<String>(["Aaa", "Bbbb", "Ccc!"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_sentences_2() {
    let ru = RegexUtils()
    let res = ru.split_sentences("Aaa.Bbbb? Ccc!")
    let expected = ArrayList<String>(["Aaa.Bbbb", "Ccc!"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_sentences_3() {
    let ru = RegexUtils()
    let res = ru.split_sentences("Aaa. bbbb? Ccc!")
    let expected = ArrayList<String>(["Aaa. bbbb", "Ccc!"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_sentences_4() {
    let ru = RegexUtils()
    let res = ru.split_sentences("Aaa. bbbb, Ccc!")
    let expected = ArrayList<String>(["Aaa. bbbb, Ccc!"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_sentences_5() {
    let ru = RegexUtils()
    let res = ru.split_sentences("Aaa, Bbbb? Ccc!")
    let expected = ArrayList<String>(["Aaa, Bbbb", "Ccc!"])
    if (res != expected) {
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
