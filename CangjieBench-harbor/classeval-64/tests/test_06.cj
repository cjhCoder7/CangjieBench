import std.convert.Formattable
import std.convert.Parsable
import std.convert.RadixConvertible

func test_main() {
    if (NumberConverter.decimal_to_binary(42423) != "1010010110110111") {
        throw Exception("Test failed!")
    }
    if (NumberConverter.binary_to_decimal("1010010110110111") != 42423) {
        throw Exception("Test failed!")
    }
    if (NumberConverter.decimal_to_octal(42423) != "122667") {
        throw Exception("Test failed!")
    }
    if (NumberConverter.decimal_to_octal(42423) != "122667") {
        throw Exception("Test failed!")
    }
    if (NumberConverter.decimal_to_hex(42423) != "a5b7") {
        throw Exception("Test failed!")
    }
    if (NumberConverter.hex_to_decimal("a5b7") != 42423) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
