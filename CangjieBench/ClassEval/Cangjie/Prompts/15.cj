import std.collection.ArrayList

class BoyerMooreSearch {

    /*
    his is a class that implements the Boyer-Moore algorithm for string searching, which is used to find occurrences of a pattern within a given text.
    */

    let text: String
    let pattern: String
    let textLen: Int64
    let patLen: Int64

    public init(text: String, pattern: String) {
        /*
        Initializes the BoyerMooreSearch class with the given text and pattern.
        :param text: The text to be searched, String.
        :param pattern: The pattern to be searched for, String.
        */
        this.text = text
        this.pattern = pattern
        this.textLen = text.size
        this.patLen = pattern.size
    }

    public func match_in_pattern(char: String): Int64 {
        /*
        Finds the rightmost occurrence of a character in the pattern.
        :param char: The character to be searched for, String.
        :return: The index of the rightmost occurrence of the character in the pattern, Int64.
        >>> boyerMooreSearch = BoyerMooreSearch("ABAABA", "AB")
        >>> boyerMooreSearch.match_in_pattern("A")
        0

        */
        
    }

    public func mismatch_in_text(currentPos: Int64): Int64 {
        /*
        Determines the position of the first dismatch between the pattern and the text.
        :param currentPos: The current position in the text, Int64.
        :return: The position of the first dismatch between the pattern and the text, Int64,otherwise -1.
        >>> boyerMooreSearch = BoyerMooreSearch("ABAABA", "ABC")
        >>> boyerMooreSearch.mismatch_in_text(0)
        2

        */
        
    }

    public func bad_character_heuristic(): ArrayList<Int64> {
        /*
        Finds all occurrences of the pattern in the text.
        :return: A list of all positions of the pattern in the text, ArrayList<Int64>.
        >>> boyerMooreSearch = BoyerMooreSearch("ABAABA", "AB")
        >>> boyerMooreSearch.bad_character_heuristic()
        [0, 3]

        */
        
    }
}
