func test_is_valid_input() {
    let w2n = Words2Numbers()
    if (w2n.is_valid_input("twenty-five thousand three hundred and forty-two") != true) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_input2() {
    let w2n = Words2Numbers()
    if (w2n.is_valid_input("second hundred and third") != true) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_input3() {
    let w2n = Words2Numbers()
    if (w2n.is_valid_input("twenty-fifth thousand three hundred and forty-second") != true) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_input4() {
    let w2n = Words2Numbers()
    if (w2n.is_valid_input("eleventy thousand and five") != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_input5() {
    let w2n = Words2Numbers()
    if (w2n.is_valid_input("seventy two thousand and hundred eleven") != true) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_input6() {
    let w2n = Words2Numbers()
    if (w2n.is_valid_input("fifteenth hundred") != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_valid_input()
    test_is_valid_input2()
    test_is_valid_input3()
    test_is_valid_input4()
    test_is_valid_input5()
    test_is_valid_input6()
}