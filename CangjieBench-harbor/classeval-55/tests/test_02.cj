func test_main() {
    let manacher = Manacher("ababa")
    if (manacher.palindromic_length(2, 1, "a|b|a|b|a") != 2) {
        throw Exception("Test failed!")
    }
    if (manacher.palindromic_string() != "ababa") {
        print(manacher.palindromic_string())
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
