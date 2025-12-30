func test_add_word_1() {
    let longestWord = LongestWord()
    longestWord.add_word("hello")
    let expected = ArrayList<String>(["hello"])
    if (longestWord.word_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_word_2() {
    let longestWord = LongestWord()
    longestWord.add_word("hello")
    longestWord.add_word("world")
    let expected = ArrayList<String>(["hello", "world"])
    if (longestWord.word_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_word_3() {
    let longestWord = LongestWord()
    longestWord.add_word("hello")
    longestWord.add_word("world")
    longestWord.add_word("!")
    let expected = ArrayList<String>(["hello", "world", "!"])
    if (longestWord.word_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_word_4() {
    let longestWord = LongestWord()
    longestWord.add_word("hello")
    longestWord.add_word("world")
    longestWord.add_word("!")
    longestWord.add_word("!")
    let expected = ArrayList<String>(["hello", "world", "!", "!"])
    if (longestWord.word_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_word_5() {
    let longestWord = LongestWord()
    longestWord.add_word("hello")
    longestWord.add_word("world")
    longestWord.add_word("!")
    longestWord.add_word("!")
    longestWord.add_word("!")
    let expected = ArrayList<String>(["hello", "world", "!", "!", "!"])
    if (longestWord.word_list != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_word_1()
    test_add_word_2()
    test_add_word_3()
    test_add_word_4()
    test_add_word_5()
}