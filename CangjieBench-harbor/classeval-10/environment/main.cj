import std.collection.HashMap
import std.convert.RadixConvertible

class BinaryDataProcessor {

    /*
    This is a class used to process binary data, which includes functions such as clearing non 0 or 1 characters, counting binary string information, and converting to corresponding strings based on different encoding methods.
    */

    var binary_string: String

    public init(binary_string: String) {
        /*
        Initialize the class with a binary string and clean it by removing all non 0 or 1 characters.
        */
        this.binary_string = binary_string
        this.clean_non_binary_chars()
    }

    public func clean_non_binary_chars(): Unit {
        /*
        Clean the binary string by removing all non 0 or 1 characters.
        >>> bdp = BinaryDataProcessor("01101000daf3e4r01100101011011000110110001101111")
        >>> bdp.clean_non_binary_chars()
        >>> bdp.binary_string
        '0110100001100101011011000110110001101111'

        */

    }

    public func calculate_binary_info(): HashMap<String, Float64> {
        /*
        Calculate the binary string information, including the percentage of 0 and 1, and the total length of the binary string.
        >>> bdp = BinaryDataProcessor("0110100001100101011011000110110001101111")
        >>> bdp.calculate_binary_info()
        {'Zeroes': 0.475, 'Ones': 0.525, 'Bit length': 40.0}

        */

    }

    public func convert_to_ascii(): String {
        /*
        Convert the binary string to ascii string.
        >>> bdp = BinaryDataProcessor("0110100001100101011011000110110001101111")
        >>> bdp.convert_to_ascii()
        'hello'

        */

    }

    public func convert_to_utf8(): String {
        /*
        Convert the binary string to utf-8 string.
        >>> bdp = BinaryDataProcessor("0110100001100101011011000110110001101111")
        >>> bdp.convert_to_utf8()
        'hello'

        */
        
    }
}
