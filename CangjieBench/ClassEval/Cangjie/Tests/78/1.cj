func test_count_words_1() {
    let ss = SplitSentence()
    let cnt = ss.count_words("abc def")
    if (cnt != 2) {
        throw Exception("Test failed!")
    }
}

func test_count_words_2() {
    let ss = SplitSentence()
    let cnt = ss.count_words("abc def 1")
    if (cnt != 2) {
        throw Exception("Test failed!")
    }
}

func test_count_words_3() {
    let ss = SplitSentence()
    let cnt = ss.count_words("abc 1")
    if (cnt != 1) {
        throw Exception("Test failed!")
    }
}

func test_count_words_4() {
    let ss = SplitSentence()
    let cnt = ss.count_words("abc def bbb1")
    if (cnt != 3) {
        throw Exception("Test failed!")
    }
}

func test_count_words_5() {
    let ss = SplitSentence()
    let cnt = ss.count_words("abc def 111")
    if (cnt != 2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_count_words_1()
    test_count_words_2()
    test_count_words_3()
    test_count_words_4()
    test_count_words_5()
}