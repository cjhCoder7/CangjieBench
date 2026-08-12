import std.convert.Parsable

func test_main() {
    if (BigNumCalculator.add("12345678901234567890", "98765432109876543210") != "111111111011111111100") {
        throw Exception("Test failed!")
    }
    if (BigNumCalculator.subtract("12345678901234567890", "98765432109876543210") != "-86419753208641975320") {
        throw Exception("Test failed!")
    }
    if (BigNumCalculator.multiply("12345678901234567890", "98765432109876543210") != "1219326311370217952237463801111263526900") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
