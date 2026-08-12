import std.convert.Formattable
import std.convert.Parsable
import std.convert.RadixConvertible

func test_decimal_to_octal() {
    if (NumberConverter.decimal_to_octal(42423) != "122667") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_octal_2() {
    if (NumberConverter.decimal_to_octal(21271) != "51427") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_octal_3() {
    if (NumberConverter.decimal_to_octal(84907) != "245653") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_octal_4() {
    if (NumberConverter.decimal_to_octal(169815) != "513527") {
        throw Exception("Test failed!")
    }
}

func test_decimal_to_octal_5() {
    if (NumberConverter.decimal_to_octal(339630) != "1227256") {
        throw Exception("Test failed!")
    }
}

main() {
    test_decimal_to_octal()
    test_decimal_to_octal_2()
    test_decimal_to_octal_3()
    test_decimal_to_octal_4()
    test_decimal_to_octal_5()
}
