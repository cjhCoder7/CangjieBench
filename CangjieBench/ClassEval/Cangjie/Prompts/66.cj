import std.collection.ArrayList
import std.convert.RadixConvertible

class NumericEntityUnescaper {

    /*
    This is a class that provides functionality to replace numeric entities with their corresponding characters in a given string.
    */

    public init() {}

    public func replace(string: String): String {
        /*
        Replaces numeric character references (HTML entities) in the input string with their corresponding Unicode characters.
        :param string: String, the input string containing numeric character references.
        :return: String, the input string with numeric character references replaced with their corresponding Unicode characters.
        >>> unescaper = NumericEntityUnescaper()
        >>> unescaper.replace("&#65;&#66;&#67;")
        'ABC'

        */
        
    }

    public static func is_hex_char(char: Rune): Bool {
        /*
        Determines whether a given character is a hexadecimal digit.
        :param char: Rune, the character to check.
        :return: Bool, true if the character is a hexadecimal digit, false otherwise.
        >>> NumericEntityUnescaper.is_hex_char(r'a')
        true

        */
        
    }
}

