func test_NumberWordFormatter() {
    var formatter = NumberWordFormatter()
    if (formatter.format("123456") != "ONE HUNDRED AND TWENTY THREE THOUSAND FOUR HUNDRED AND FIFTY SIX ONLY") {
        throw Exception("Test failed!")
    }

    formatter = NumberWordFormatter()
    if (formatter.format_string("123456") != "ONE HUNDRED AND TWENTY THREE THOUSAND FOUR HUNDRED AND FIFTY SIX ONLY") {
        throw Exception("Test failed!")
    }

    formatter = NumberWordFormatter()
    if (formatter.trans_two("23") != "TWENTY THREE") {
        throw Exception("Test failed!")
    }

    formatter = NumberWordFormatter()
    if (formatter.trans_three("123") != "ONE HUNDRED AND TWENTY THREE") {
        throw Exception("Test failed!")
    }

    formatter = NumberWordFormatter()
    if (formatter.parse_more(1) != "THOUSAND") {
        throw Exception("Test failed!")
    }
}

main() {
    test_NumberWordFormatter()
}