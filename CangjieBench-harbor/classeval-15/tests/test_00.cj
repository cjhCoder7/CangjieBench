import std.collection.ArrayList

func test_match_in_pattern() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "AB")
    if (boyerMooreSearch.match_in_pattern("A") != 0) {
        throw Exception("Test failed!")
    }
}

func test_match_in_pattern_2() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "ABAB")
    if (boyerMooreSearch.match_in_pattern("B") != 3) {
        throw Exception("Test failed!")
    }
}

func test_match_in_pattern_3() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "ABCABC")
    if (boyerMooreSearch.match_in_pattern("C") != 5) {
        throw Exception("Test failed!")
    }
}

func test_match_in_pattern_4() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "ABCABC")
    if (boyerMooreSearch.match_in_pattern("D") != -1) {
        throw Exception("Test failed!")
    }
}

func test_match_in_pattern_5() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "ABCABC")
    if (boyerMooreSearch.match_in_pattern("E") != -1) {
        throw Exception("Test failed!")
    }
}

main() {
    test_match_in_pattern()
    test_match_in_pattern_2()
    test_match_in_pattern_3()
    test_match_in_pattern_4()
    test_match_in_pattern_5()
}
