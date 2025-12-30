func test_palindromic_string() {
    let manacher = Manacher("ababaxse")
    if (manacher.palindromic_string() != "ababa") {
        throw Exception("Test failed!")
    }
}

func test_palindromic_string_2() {
    let manacher = Manacher("ababax")
    if (manacher.palindromic_string() != "ababa") {
        throw Exception("Test failed!")
    }
}

func test_palindromic_string_3() {
    let manacher = Manacher("ababax")
    if (manacher.palindromic_string() != "ababa") {
        throw Exception("Test failed!")
    }
}

func test_palindromic_string_4() {
    let manacher = Manacher("ababaxssss")
    if (manacher.palindromic_string() != "ababa") {
        throw Exception("Test failed!")
    }
}

func test_palindromic_string_5() {
    let manacher = Manacher("abab")
    if (manacher.palindromic_string() != "aba") {
        throw Exception("Test failed!")
    }
}

main() {
    test_palindromic_string()
    test_palindromic_string_2()
    test_palindromic_string_3()
    test_palindromic_string_4()
    test_palindromic_string_5()
}