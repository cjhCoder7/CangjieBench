func test_trans_two_1() {
    let formatter = NumberWordFormatter()
    if (formatter.trans_two("23") != "TWENTY THREE") {
        throw Exception("Test failed!")
    }
}

func test_trans_two_2() {
    let formatter = NumberWordFormatter()
    if (formatter.trans_two("10") != "TEN") {
        throw Exception("Test failed!")
    }
}

func test_trans_two_3() {
    let formatter = NumberWordFormatter()
    if (formatter.trans_two("05") != "FIVE") {
        throw Exception("Test failed!")
    }
}

func test_trans_two_4() {
    let formatter = NumberWordFormatter()
    if (formatter.trans_two("00") != "") {
        throw Exception("Test failed!")
    }
}

func test_trans_two_5() {
    let formatter = NumberWordFormatter()
    if (formatter.trans_two("01") != "ONE") {
        throw Exception("Test failed!")
    }
}

func test_trans_two_6() {
    let formatter = NumberWordFormatter()
    if (formatter.trans_two("80") != "EIGHTY") {
        throw Exception("Test failed!")
    }
}

main() {
    test_trans_two_1()
    test_trans_two_2()
    test_trans_two_3()
    test_trans_two_4()
    test_trans_two_5()
    test_trans_two_6()
}