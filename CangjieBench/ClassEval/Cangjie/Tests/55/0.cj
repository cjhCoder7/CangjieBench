func test_palindromic_length() {
    let manacher = Manacher("ababa")
    if (manacher.palindromic_length(2, 1, "a|b|a|b|a") != 2) {
        throw Exception("Test failed!")
    }
}

func test_palindromic_length_2() {
    let manacher = Manacher("ababaxse")
    if (manacher.palindromic_length(2, 1, "a|b|a|b|a|x|s|e") != 2) {
        throw Exception("Test failed!")
    }
}

func test_palindromic_length_3() {
    let manacher = Manacher("ababax")
    if (manacher.palindromic_length(2, 3, "a|b|a|b|a|x") != 0) {
        throw Exception("Test failed!")
    }
}

func test_palindromic_length_4() {
    let manacher = Manacher("ababax")
    if (manacher.palindromic_length(9, 2, "a|b|a|b|a|x") != 0) {
        throw Exception("Test failed!")
    }
}

func test_palindromic_length_5() {
    let manacher = Manacher("ababax")
    if (manacher.palindromic_length(4, 1, "a|b|a|b|a|x") != 4) {
        throw Exception("Test failed!")
    }
}

main() {
    test_palindromic_length()
    test_palindromic_length_2()
    test_palindromic_length_3()
    test_palindromic_length_4()
    test_palindromic_length_5()
}