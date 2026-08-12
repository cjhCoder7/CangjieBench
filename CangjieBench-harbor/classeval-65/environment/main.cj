import std.convert.Parsable
import std.unicode.UnicodeStringExtension

class NumberWordFormatter {

    /*
    This is a class that provides to convert numbers into their corresponding English word representation, including handling the conversion of both the integer and decimal parts, and incorporating appropriate connectors and units.
    */

    let NUMBER: Array<String>
    let NUMBER_TEEN: Array<String>
    let NUMBER_TEN: Array<String>
    let NUMBER_MORE: Array<String>
    let NUMBER_SUFFIX: Array<String>

    public init() {
        /*
        Initialize NumberWordFormatter object.
        */
        this.NUMBER = ["", "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SEVEN", "EIGHT", "NINE"]
        this.NUMBER_TEEN = ["TEN", "ELEVEN", "TWELVE", "THIRTEEN", "FOURTEEN", "FIFTEEN", "SIXTEEN", "SEVENTEEN",
                            "EIGHTEEN",
                            "NINETEEN"]
        this.NUMBER_TEN = ["TEN", "TWENTY", "THIRTY", "FORTY", "FIFTY", "SIXTY", "SEVENTY", "EIGHTY", "NINETY"]
        this.NUMBER_MORE = ["", "THOUSAND", "MILLION", "BILLION"]
        this.NUMBER_SUFFIX = ["k", "w", "", "m", "", "", "b", "", "", "t", "", "", "p", "", "", "e"]
    }

    public func format(x: Option<String>): String {
        /*
        Converts a number into words format
        :param x: Option<String>, the number to be converted into words format
        :return: String, the number in words format
        >>> formatter = NumberWordFormatter()
        >>> formatter.format("123456")
        "ONE HUNDRED AND TWENTY THREE THOUSAND FOUR HUNDRED AND FIFTY SIX ONLY"
        */
        
    }

    public func format_string(x: String): String {
        /*
        Converts a string representation of a number into words format
        :param x: String, the string representation of a number
        :return: String, the number in words format
        >>> formatter = NumberWordFormatter()
        >>> formatter.format_string("123456")
        "ONE HUNDRED AND TWENTY THREE THOUSAND FOUR HUNDRED AND FIFTY SIX ONLY"
        */
        
    }

    public func trans_two(s: String): String {
        /*
        Converts a two-digit number into words format
        :param s: String, the two-digit number
        :return: String, the number in words format
        >>> formatter = NumberWordFormatter()
        >>> formatter.trans_two("23")
        "TWENTY THREE"
        */
        
    }

    public func trans_three(s: String): String {
        /*
        Converts a three-digit number into words format
        :param s: String, the three-digit number
        :return: String, the number in words format
        >>> formatter = NumberWordFormatter()
        >>> formatter.trans_three("123")
        "ONE HUNDRED AND TWENTY THREE"
        */
        
    }

    public func parse_more(i: Int64): String {
        /*
        Parses the thousand/million/billion suffix based on the index
        :param i: Int64, the index representing the magnitude (thousand, million, billion)
        :return: String, the corresponding suffix for the magnitude
        >>> formatter = NumberWordFormatter()
        >>> formatter.parse_more(1)
        "THOUSAND"
        */
        
    }
}

