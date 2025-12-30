func test_main() {
    let bdp = BinaryDataProcessor("01101000daf3e4r01100101011011000110110001101111")
    if (bdp.binary_string != "0110100001100101011011000110110001101111") {
        throw Exception("Test failed!")
    }
    let result = bdp.calculate_binary_info()
    let bits = "0110100001100101011011000110110001101111"
    let zeroes_percentage = Float64(bits.count("0")) / Float64(bits.size)
    let ones_percentage = Float64(bits.count("1")) / Float64(bits.size)
    let expected = HashMap<String, Float64>([("Zeroes", zeroes_percentage), ("Ones", ones_percentage), ("Bit length", Float64(bits.size))])
    if (result != expected) {
        throw Exception("Test failed!")
    }
    if (bdp.convert_to_ascii() != "hello") {
        throw Exception("Test failed!")
    }
    if (bdp.convert_to_utf8() != "hello") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}