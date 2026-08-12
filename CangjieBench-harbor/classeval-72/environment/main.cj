import std.regex.Regex
import std.collection.ArrayList

class RegexUtils {

    /*
    The class provides to match, find all occurrences, split, and substitute text using regular expressions. It also includes predefined patterns, validating phone numbers and extracting email addresses.
    */

    public func match_regex(pattern: String, text: String): Bool {
        /*
        Check if the text matches the regular expression
        :param pattern: String, Regular expression pattern
        :param text: String, Text to match
        :return: true or false, representing whether the text matches the regular expression or not
        >>> ru = RegexUtils()
        >>> ru.match_regex(#'\b\d{3}-\d{3}-\d{4}\b'#, "123-456-7890")
        true
        */
        
    }

    public func findall(pattern: String, text: String): ArrayList<String> {
        /*
        Find all matching substrings and return a list of all matching substrings
        :param pattern: String, Regular expression pattern
        :param text: String, Text to match
        :return: list of string, List of all matching substrings
        >>> ru = RegexUtils()
        >>> ru.findall(#'\b\d{3}-\d{3}-\d{4}\b'#, "123-456-7890 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
        ['123-456-7890', '876-286-9876', '987-762-9767']
        */
        
    }

    public func split(pattern: String, text: String): ArrayList<String> {
        /*
        Split text based on regular expression patterns and return a list of substrings
        :param pattern: String, Regular expression pattern
        :param text: String, Text to be split
        :return: list of string, List of substrings after splitting
        >>> ru = RegexUtils()
        >>> ru.split(#'\b\d{3}-\d{3}-\d{4}\b'#, "123-456-7890 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
        ['', ' abiguygusu ', ' kjgufwycs ', '']
        */
        
    }

    public func sub(pattern: String, replacement: String, text: String): String {
        /*
        Replace the substring matched by a regular expression with the specified string
        :param pattern: String, Regular expression pattern
        :param replacement: Text to replace with
        :param text: String, Text to be replaced
        :return: String, Text after replacement
        >>> ru = RegexUtils()
        >>> ru.sub(#'\b\d{3}-\d{3}-\d{4}\b'#, 'phone num',  "123-456-7890 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
        'phone num abiguygusu phone num kjgufwycs phone num'
        */
        
    }

    public func generate_email_pattern(): String {
        /*
        Generate regular expression patterns that match email addresses
        :return: String, regular expression patterns that match email addresses
        >>> ru = RegexUtils()
        >>> ru.generate_email_pattern()
        '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b'
        */
        
    }

    public func generate_phone_number_pattern(): String {
        /*
        Generate regular expression patterns that match phone numbers
        :return: String, regular expression patterns that match phone numbers
        >>> ru = RegexUtils()
        >>> ru.generate_phone_number_pattern()
        '\b\d{3}-\d{3}-\d{4}\b'
        */
        
    }

    public func generate_split_sentences_pattern(): String {
        /*
        Generate regular expression patterns that match the middle characters of two sentences
        :return: String, regular expression patterns that match the middle characters of two sentences
        >>> ru = RegexUtils()
        >>> ru.generate_split_sentences_pattern()
        '[.!?][\s]{1,2}(?=[A-Z])'
        */
        
    }

    public func split_sentences(text: String): ArrayList<String> {
        /*
        Split the text into a list of sentences without Punctuation except the last sentence
        :param text: Text to be split
        :return: Split Text List
        >>> ru = RegexUtils()
        >>> ru.split_sentences("Aaa. Bbbb? Ccc!")
        ['Aaa', 'Bbbb', 'Ccc!']
        */
        
    }

    public func validate_phone_number(phone_number: String): Bool {
        /*
        Verify if the phone number is valid
        :param phone_number: Phone number to be verified
        :return: true or false, indicating whether the phone number is valid
        >>> ru = RegexUtils()
        >>> ru.validate_phone_number("123-456-7890")
        true
        */
        
    }

    public func extract_email(text: String): ArrayList<String> {
        /*
        Extract all email addresses from the text
        :param text: String, input text
        :return: list of string, All extracted email addresses
        >>> ru = RegexUtils()
        >>> ru.extract_email("abcdefg@163.com ygusyfysy@126.com wljduyuv@qq.com")
        ['abcdefg@163.com', 'ygusyfysy@126.com', 'wljduyuv@qq.com']
        */
        
    }
}

