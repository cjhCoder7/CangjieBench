import std.convert.Parsable
import std.unicode.UnicodeStringExtension

func test_trans_three_1() {
    let formatter = NumberWordFormatter()
    if (formatter.trans_three("123") != "ONE HUNDRED AND TWENTY THREE") {
        throw Exception("Test failed!")
    }
}

func test_trans_three_2() {
    let formatter = NumberWordFormatter()
    if (formatter.trans_three("900") != "NINE HUNDRED") {
        throw Exception("Test failed!")
    }
}

func test_trans_three_3() {
    let formatter = NumberWordFormatter()
    if (formatter.trans_three("007") != "SEVEN") {
        throw Exception("Test failed!")
    }
}

func test_trans_three_4() {
    let formatter = NumberWordFormatter()
    if (formatter.trans_three("001") != "ONE") {
        throw Exception("Test failed!")
    }
}

func test_trans_three_5() {
    let formatter = NumberWordFormatter()
    if (formatter.trans_three("006") != "SIX") {
        throw Exception("Test failed!")
    }
}

main() {
    test_trans_three_1()
    test_trans_three_2()
    test_trans_three_3()
    test_trans_three_4()
    test_trans_three_5()
}
