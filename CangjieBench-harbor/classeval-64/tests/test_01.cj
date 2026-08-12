import std.convert.Formattable
import std.convert.Parsable
import std.convert.RadixConvertible

func test_binary_to_decimal() {
    if (NumberConverter.binary_to_decimal("1010010110110111") != 42423) {
        throw Exception("Test failed!")
    }
}

func test_binary_to_decimal_2() {
    if (NumberConverter.binary_to_decimal("10100101110111") != 10615) {
        throw Exception("Test failed!")
    }
}

func test_binary_to_decimal_3() {
    if (NumberConverter.binary_to_decimal("1010010111010111") != 42455) {
        throw Exception("Test failed!")
    }
}

func test_binary_to_decimal_4() {
    if (NumberConverter.binary_to_decimal("101001011101011011") != 169819) {
        throw Exception("Test failed!")
    }
}

func test_binary_to_decimal_5() {
    if (NumberConverter.binary_to_decimal("1010010111010110111") != 339639) {
        throw Exception("Test failed!")
    }
}

main() {
    test_binary_to_decimal()
    test_binary_to_decimal_2()
    test_binary_to_decimal_3()
    test_binary_to_decimal_4()
    test_binary_to_decimal_5()
}
