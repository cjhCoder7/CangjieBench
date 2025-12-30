func test_convert_to_ascii() {
    let bdp = BinaryDataProcessor("0110100001100101011011000110110001101111")
    if (bdp.convert_to_ascii() != "hello") {
        throw Exception("Test failed!")
    }
}

func test_convert_to_ascii_2() {
    let bdp = BinaryDataProcessor("0110100000100101011011000110110001101111")
    if (bdp.convert_to_ascii() != "h%llo") {
        throw Exception("Test failed!")
    }
}

func test_convert_to_ascii_3() {
    let bdp = BinaryDataProcessor("01101000011011010110001001101111")
    if (bdp.convert_to_ascii() != "hmbo") {
        throw Exception("Test failed!")
    }
}

func test_convert_to_ascii_4() {
    let bdp = BinaryDataProcessor("01101000011001010110001001101111")
    if (bdp.convert_to_ascii() != "hebo") {
        throw Exception("Test failed!")
    }
}

func test_convert_to_ascii_5() {
    let bdp = BinaryDataProcessor("0110100001100101011011000110110001101111")
    if (bdp.convert_to_ascii() != "hello") {
        throw Exception("Test failed!")
    }
}

main() {
    test_convert_to_ascii()
    test_convert_to_ascii_2()
    test_convert_to_ascii_3()
    test_convert_to_ascii_4()
    test_convert_to_ascii_5()
}