import std.convert.Formattable
import std.convert.Parsable
import std.convert.RadixConvertible

class NumberConverter {

    /*
    The class allows to convert  decimal to binary, octal and hexadecimal repectively and contrarily
    */

    public static func decimal_to_binary(decimal_num: Int64): String {
        /*
        Convert a number from decimal format to binary format.
        :param decimal_num: Int64, decimal number
        :return: String, the binary representation of an integer.
        >>> NumberConverter.decimal_to_binary(42423)
        '1010010110110111'
        */
        
    }

    public static func binary_to_decimal(binary_num: String): Int64 {
        /*
        Convert a number from binary format to decimal format.
        :param binary_num: String, binary number
        :return: Int64, the decimal representation of binary number str.
        >>> NumberConverter.binary_to_decimal('1010010110110111')
        42423
        */
        
    }

    public static func decimal_to_octal(decimal_num: Int64): String {
        /*
        Convert a number from decimal format to octal format.
        :param decimal_num: Int64, decimal number
        :return: String, the octal representation of an integer.
        >>> NumberConverter.decimal_to_octal(42423)
        '122667'
        */
        
    }

    public static func octal_to_decimal(octal_num: String): Int64 {
        /*
        Convert a number from octal format to decimal format.
        :param octal_num: String, octal number
        :return: Int64, the decimal representation of octal number str.
        >>> NumberConverter.octal_to_decimal('122667')
        42423
        */
        
    }

    public static func decimal_to_hex(decimal_num: Int64): String {
        /*
        Convert a number from decimal format to hex format.
        :param decimal_num: Int64, decimal number
        :return hex_num: String, the hex representation of an integer.
        >>> NumberConverter.decimal_to_hex(42423)
        'a5b7'
        */
        
    }

    public static func hex_to_decimal(hex_num: String): Int64 {
        /*
        Convert a number from hex format to decimal format.
        :param hex_num: String, hex num
        :return: Int64, the decimal representation of hex number str.
        >>> NumberConverter.hex_to_decimal('a5b7')
        42423
        */
        
    }
}

