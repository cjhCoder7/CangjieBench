func test_format_1() {
    let formatter = NumberWordFormatter()
    if (formatter.format("123456") != "ONE HUNDRED AND TWENTY THREE THOUSAND FOUR HUNDRED AND FIFTY SIX ONLY") {
        throw Exception("Test failed!")
    }
}

func test_format_2() {
    let formatter = NumberWordFormatter()
    if (formatter.format("1000") != "ONE THOUSAND ONLY") {
        throw Exception("Test failed!")
    }
}

func test_format_3() {
    let formatter = NumberWordFormatter()
    if (formatter.format("1000000") != "ONE MILLION ONLY") {
        throw Exception("Test failed!")
    }
}

func test_format_4() {
    let formatter = NumberWordFormatter()
    if (formatter.format("1.23") != "ONE AND CENTS TWENTY THREE ONLY") {
        throw Exception("Test failed!")
    }
}

func test_format_5() {
    let formatter = NumberWordFormatter()
    if (formatter.format("0") != "ZERO ONLY") {
        throw Exception("Test failed!")
    }
}

func test_format_6() {
    let formatter = NumberWordFormatter()
    if (formatter.format(None) != "") {
        throw Exception("Test failed!")
    }
}

main() {
    test_format_1()
    test_format_2()
    test_format_3()
    test_format_4()
    test_format_5()
    test_format_6()
}