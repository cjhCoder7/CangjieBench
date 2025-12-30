func test_bad_character_heuristic() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "AB")
    let expected = ArrayList<Int64>([0, 3])
    if (boyerMooreSearch.bad_character_heuristic() != expected) {
        throw Exception("Test failed!")
    }
}

func test_bad_character_heuristic_2() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "ABC")
    let expected = ArrayList<Int64>()
    if (boyerMooreSearch.bad_character_heuristic() != expected) {
        throw Exception("Test failed!")
    }
}

func test_bad_character_heuristic_3() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "")
    let expected = ArrayList<Int64>([0, 1, 2, 3, 4, 5, 6])
    if (boyerMooreSearch.bad_character_heuristic() != expected) {
        throw Exception("Test failed!")
    }
}

func test_bad_character_heuristic_4() {
    let boyerMooreSearch = BoyerMooreSearch("ABACABA", "ABA")
    let expected = ArrayList<Int64>([0, 4])
    if (boyerMooreSearch.bad_character_heuristic() != expected) {
        throw Exception("Test failed!")
    }
}

func test_bad_character_heuristic_5() {
    let boyerMooreSearch = BoyerMooreSearch("ABACABA", "ABAC")
    let expected = ArrayList<Int64>([0])
    if (boyerMooreSearch.bad_character_heuristic() != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_bad_character_heuristic()
    test_bad_character_heuristic_2()
    test_bad_character_heuristic_3()
    test_bad_character_heuristic_4()
    test_bad_character_heuristic_5()
}