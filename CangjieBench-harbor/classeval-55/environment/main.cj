class Manacher {

    /*
    his is a class that implements a manacher algorithm to find the Longest palindromic substring in a given string.
    */

    let input_string: String

    public init(input_string: String) {
        /*
        Initializes the Manacher class with the given input_string.
        :param input_string: The input_string to be searched, String.
        */
        this.input_string = input_string
    }

    public func palindromic_length(center: Int64, diff: Int64, string: String): Int64 {
        /*
        Recursively calculates the length of the palindromic substring based on a given center, difference value, and input string.
        :param center: The center of the palindromic substring, Int64.
        :param diff: The difference between the center and the current position, Int64.
        :param string: The string to be searched, String.
        :return: The length of the palindromic substring, Int64.
        >>> manacher = Manacher('ababa')
        >>> manacher.palindromic_length(2, 1, 'a|b|a|b|a')
        2

        */
        
    }

    public func palindromic_string(): String {
        /*
        Finds the longest palindromic substring in the given string.
        :return: The longest palindromic substring, String.
        >>> manacher = Manacher('ababaxse')
        >>> manacher.palindromic_string()
        'ababa'

        */
        
    }
}
