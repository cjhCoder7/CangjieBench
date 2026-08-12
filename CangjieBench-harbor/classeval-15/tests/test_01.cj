import std.collection.ArrayList

func test_mismatch_in_text() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "AB")
    if (boyerMooreSearch.mismatch_in_text(0) != -1) {
        throw Exception("Test failed!")
    }
}

func test_mismatch_in_text_2() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "ABC")
    if (boyerMooreSearch.mismatch_in_text(0) != 2) {
        throw Exception("Test failed!")
    }
}

func test_mismatch_in_text_3() {
    let boyerMooreSearch = BoyerMooreSearch("AAAA", "ABC")
    if (boyerMooreSearch.mismatch_in_text(0) != 2) {
        throw Exception("Test failed!")
    }
}

func test_mismatch_in_text_4() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "")
    if (boyerMooreSearch.mismatch_in_text(0) != -1) {
        throw Exception("Test failed!")
    }
}

func test_mismatch_in_text_5() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "ABC")
    if (boyerMooreSearch.mismatch_in_text(3) != 5) {
        throw Exception("Test failed!")
    }
}

main() {
    test_mismatch_in_text()
    test_mismatch_in_text_2()
    test_mismatch_in_text_3()
    test_mismatch_in_text_4()
    test_mismatch_in_text_5()
}
