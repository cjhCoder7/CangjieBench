func test_main() {
    let w2n = Words2Numbers()
    if (w2n.is_valid_input("seventy two thousand and hundred eleven") != true) {
        throw Exception("Test failed!")
    }
    if (w2n.text2int("seventy two thousand and hundred eleven") != "72011") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}