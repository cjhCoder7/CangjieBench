func test_convert_to_utf8() {
    let bdp = BinaryDataProcessor("0110100001100101011011000110110001101111")
    if (bdp.convert_to_utf8() != "hello") {
        throw Exception("Test failed!")
    }
}

func test_convert_to_utf8_2() {
    let bdp = BinaryDataProcessor("0110100001100101011011000110110001101001")
    if (bdp.convert_to_utf8() != "helli") {
        throw Exception("Test failed!")
    }
}

func test_convert_to_utf8_3() {
    let bdp = BinaryDataProcessor("0110000001100101011011000110110001101111")
    if (bdp.convert_to_utf8() != "`ello") {
        throw Exception("Test failed!")
    }
}

func test_convert_to_utf8_4() {
    let bdp = BinaryDataProcessor("0110101101100101011011000110110001101111")
    if (bdp.convert_to_utf8() != "kello") {
        throw Exception("Test failed!")
    }
}

func test_convert_to_utf8_5() {
    let bdp = BinaryDataProcessor("0110101101100100011011000110110001101111")
    if (bdp.convert_to_utf8() != "kdllo") {
        throw Exception("Test failed!")
    }
}

main() {
    test_convert_to_utf8()
    test_convert_to_utf8_2()
    test_convert_to_utf8_3()
    test_convert_to_utf8_4()
    test_convert_to_utf8_5()
}