import std.collection.ArrayList

func test_main() {
    let boyerMooreSearch = BoyerMooreSearch("ABAABA", "AB")
    if (boyerMooreSearch.match_in_pattern("A") != 0) {
        throw Exception("Test failed!")
    }
    if (boyerMooreSearch.mismatch_in_text(0) != -1) {
        throw Exception("Test failed!")
    }
    let expected = ArrayList<Int64>([0, 3])
    if (boyerMooreSearch.bad_character_heuristic() != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
