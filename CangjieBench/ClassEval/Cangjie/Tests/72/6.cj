func test_generate_split_sentences_pattern_1() {
    let ru = RegexUtils()
    let pat = ru.generate_split_sentences_pattern()
    let res = ru.match_regex(pat, "? Y")
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_generate_split_sentences_pattern_2() {
    let ru = RegexUtils()
    let pat = ru.generate_split_sentences_pattern()
    let res = ru.match_regex(pat, "! Y")
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_generate_split_sentences_pattern_3() {
    let ru = RegexUtils()
    let pat = ru.generate_split_sentences_pattern()
    let res = ru.match_regex(pat, "? ")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_generate_split_sentences_pattern_4() {
    let ru = RegexUtils()
    let pat = ru.generate_split_sentences_pattern()
    let res = ru.match_regex(pat, "?Y")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_generate_split_sentences_pattern_5() {
    let ru = RegexUtils()
    let pat = ru.generate_split_sentences_pattern()
    let res = ru.match_regex(pat, ".Y")
    if (res != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_generate_split_sentences_pattern_1()
    test_generate_split_sentences_pattern_2()
    test_generate_split_sentences_pattern_3()
    test_generate_split_sentences_pattern_4()
    test_generate_split_sentences_pattern_5()
}