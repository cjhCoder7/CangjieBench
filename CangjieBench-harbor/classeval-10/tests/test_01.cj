import std.collection.HashMap
import std.convert.RadixConvertible

func test_calculate_binary_info() {
    let bdp = BinaryDataProcessor("0110100001100101011011000110110001101111")
    let result = bdp.calculate_binary_info()
    let bits = "0110100001100101011011000110110001101111"
    let zeroes_percentage = Float64(bits.count("0")) / Float64(bits.size)
    let ones_percentage = Float64(bits.count("1")) / Float64(bits.size)
    let expected = HashMap<String, Float64>([("Zeroes", zeroes_percentage), ("Ones", ones_percentage), ("Bit length", Float64(bits.size))])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_calculate_binary_info_2() {
    let bdp = BinaryDataProcessor("0110100001100101011010011111")
    let result = bdp.calculate_binary_info()
    let bits = "0110100001100101011010011111"
    let zeroes_percentage = Float64(bits.count("0")) / Float64(bits.size)
    let ones_percentage = Float64(bits.count("1")) / Float64(bits.size)
    let expected = HashMap<String, Float64>([("Zeroes", zeroes_percentage), ("Ones", ones_percentage), ("Bit length", Float64(bits.size))])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_calculate_binary_info_3() {
    let bdp = BinaryDataProcessor("01101001111100101011010011111")
    let result = bdp.calculate_binary_info()
    let bits = "01101001111100101011010011111"
    let zeroes_percentage = Float64(bits.count("0")) / Float64(bits.size)
    let ones_percentage = Float64(bits.count("1")) / Float64(bits.size)
    let expected = HashMap<String, Float64>([("Zeroes", zeroes_percentage), ("Ones", ones_percentage), ("Bit length", Float64(bits.size))])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_calculate_binary_info_4() {
    let bdp = BinaryDataProcessor("011010011111001")
    let result = bdp.calculate_binary_info()
    let bits = "011010011111001"
    let zeroes_percentage = Float64(bits.count("0")) / Float64(bits.size)
    let ones_percentage = Float64(bits.count("1")) / Float64(bits.size)
    let expected = HashMap<String, Float64>([("Zeroes", zeroes_percentage), ("Ones", ones_percentage), ("Bit length", Float64(bits.size))])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_calculate_binary_info_5() {
    let bdp = BinaryDataProcessor("0110100111110010")
    let result = bdp.calculate_binary_info()
    let bits = "0110100111110010"
    let zeroes_percentage = Float64(bits.count("0")) / Float64(bits.size)
    let ones_percentage = Float64(bits.count("1")) / Float64(bits.size)
    let expected = HashMap<String, Float64>([("Zeroes", zeroes_percentage), ("Ones", ones_percentage), ("Bit length", Float64(bits.size))])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_binary_info()
    test_calculate_binary_info_2()
    test_calculate_binary_info_3()
    test_calculate_binary_info_4()
    test_calculate_binary_info_5()
}
