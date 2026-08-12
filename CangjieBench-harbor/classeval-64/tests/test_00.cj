import std.convert.Formattable
import std.convert.Parsable
import std.convert.RadixConvertible

func test_decimal_to_binary() {
    if (NumberConverter.decimal_to_binary(42423) != "1010010110110111") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_binary_2() {
    if (NumberConverter.decimal_to_binary(21271) != "101001100010111") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_binary_3() {
    if (NumberConverter.decimal_to_binary(42455) != "1010010111010111") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_binary_4() {
    if (NumberConverter.decimal_to_binary(84907) != "10100101110101011") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_binary_5() {
    if (NumberConverter.decimal_to_binary(169815) != "101001011101010111") {
        throw Exception("Test failed!")
    }
}

main() {
    test_decimal_to_binary()
    test_decimal_to_binary_2()
    test_decimal_to_binary_3()
    test_decimal_to_binary_4()
    test_decimal_to_binary_5()
}
