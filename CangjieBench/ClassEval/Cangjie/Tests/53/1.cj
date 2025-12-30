func test_find_longest_word_1() {
    let longestWord = LongestWord()
    longestWord.add_word("a")
    let sentence = "I am a student."
    if (longestWord.find_longest_word(sentence) != "a") {
        throw Exception("Test failed!")
    }
}

func test_find_longest_word_2() {
    let longestWord = LongestWord()
    let sentence = "I am a student."
    if (longestWord.find_longest_word(sentence) != "") {
        throw Exception("Test failed!")
    }
}

func test_find_longest_word_3() {
    let longestWord = LongestWord()
    longestWord.add_word("student")
    let sentence = "I am a student."
    if (longestWord.find_longest_word(sentence) != "student") {
        throw Exception("Test failed!")
    }
}

func test_find_longest_word_4() {
    let longestWord = LongestWord()
    longestWord.add_word("apple")
    let sentence = "Apple is red."
    if (longestWord.find_longest_word(sentence) != "apple") {
        throw Exception("Test failed!")
    }
}

func test_find_longest_word_5() {
    let longestWord = LongestWord()
    longestWord.add_word("apple")
    longestWord.add_word("red")
    let sentence = "Apple is red."
    if (longestWord.find_longest_word(sentence) != "apple") {
        throw Exception("Test failed!")
    }
}

main() {
    test_find_longest_word_1()
    test_find_longest_word_2()
    test_find_longest_word_3()
    test_find_longest_word_4()
    test_find_longest_word_5()
}