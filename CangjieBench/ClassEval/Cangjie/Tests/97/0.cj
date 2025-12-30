func test_text2int() {
    let w2n = Words2Numbers()
    if (w2n.text2int("thirty-two") != "32") {
        throw Exception("Test failed!")
    }
}

func test_text2int2() {
    let w2n = Words2Numbers()
    if (w2n.text2int("one hundred and twenty-three") != "123") {
        throw Exception("Test failed!")
    }
}

func test_text2int3() {
    let w2n = Words2Numbers()
    if (w2n.text2int("two thousand and nineteen") != "2019") {
        throw Exception("Test failed!")
    }
}

func test_text2int4() {
    let w2n = Words2Numbers()
    if (w2n.text2int("one hundred and one") != "101") {
        throw Exception("Test failed!")
    }
}

func test_text2int5() {
    let w2n = Words2Numbers()
    if (w2n.text2int("one million and eleven") != "1000011") {
        throw Exception("Test failed!")
    }
}

func test_text2int6() {
    let w2n = Words2Numbers()
    if (w2n.text2int("one million one hundred sixty-ninth") != "1000169") {
        throw Exception("Test failed!")
    }
}

main() {
    test_text2int()
    test_text2int2()
    test_text2int3()
    test_text2int4()
    test_text2int5()
    test_text2int6()
}