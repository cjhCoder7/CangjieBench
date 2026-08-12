import std.collection.HashMap
import std.convert.RadixConvertible

func test_clean_non_binary_chars() {
    let bdp = BinaryDataProcessor("01101000daf3e4r01100101011011000110110001101111")
    if (bdp.binary_string != "0110100001100101011011000110110001101111") {
        throw Exception("Test failed!")
    }
}

func test_clean_non_binary_chars_2() {
    let bdp = BinaryDataProcessor("01101000daf3e4r01100101011011addf0110001d1111")
    if (bdp.binary_string != "011010000110010101101101100011111") {
        throw Exception("Test failed!")
    }
}

func test_clean_non_binary_chars_3() {
    let bdp = BinaryDataProcessor("0sd1000daf3e4r01100101011011addf0110001d1111")
    if (bdp.binary_string != "010000110010101101101100011111") {
        throw Exception("Test failed!")
    }
}

func test_clean_non_binary_chars_4() {
    let bdp = BinaryDataProcessor("sdsdf")
    if (bdp.binary_string != "") {
        throw Exception("Test failed!")
    }
}

func test_clean_non_binary_chars_5() {
    let bdp = BinaryDataProcessor("0")
    if (bdp.binary_string != "0") {
        throw Exception("Test failed!")
    }
}

main() {
    test_clean_non_binary_chars()
    test_clean_non_binary_chars_2()
    test_clean_non_binary_chars_3()
    test_clean_non_binary_chars_4()
    test_clean_non_binary_chars_5()
}
