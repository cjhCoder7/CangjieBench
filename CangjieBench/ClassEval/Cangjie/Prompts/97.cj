import std.collection.HashMap
import std.collection.ArrayList

class Words2Numbers {

    /*
    The class provides a text-to-number conversion utility, allowing conversion of written numbers (in words) to their numerical representation.
    */

    let numwords: HashMap<String, (Int64, Int64)>
    let units: ArrayList<String>
    let tens: ArrayList<String>
    let scales: ArrayList<String>
    let ordinal_words: HashMap<String, Int64>
    let ordinal_endings: ArrayList<(String, String)>

    public init() {
        /*
        Initialize the word lists and dictionaries required for conversion
        */
        this.numwords = HashMap<String, (Int64, Int64)>()
        this.units = ArrayList<String>(["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"])
        this.tens = ArrayList<String>(["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"])
        this.scales = ArrayList<String>(["hundred", "thousand", "million", "billion", "trillion"])

        this.numwords["and"] = (1, 0)
        for (idx in 0..this.units.size) {
            this.numwords[this.units[idx]] = (1, idx)
        }
        for (idx in 0..this.tens.size) {
            this.numwords[this.tens[idx]] = (1, idx * 10)
        }
        for (idx in 0..this.scales.size) {
            if (idx * 3 == 0) {
                this.numwords[this.scales[idx]] = (10 ** 2, 0)
            } else {
                this.numwords[this.scales[idx]] = (Int64(10.0 ** (idx * 3)), 0)
            }
        }

        this.ordinal_words = HashMap<String, Int64>([('first', 1), ('second', 2), ('third', 3), ('fifth', 5), ('eighth', 8), ('ninth', 9), ('twelfth', 12)])
        this.ordinal_endings = ArrayList<(String, String)>([('ieth', 'y'), ('th', '')])
    }

    public func text2int(textnum: String): String {
        /*
        Convert the word string to the corresponding integer string
        :param textnum: String, the word string to be converted
        :return: String, the final converted integer string
        >>> w2n = Words2Numbers()
        >>> w2n.text2int("thirty-two")
        "32"
        */
        
    }

    public func is_valid_input(textnum: String): Bool {
        /*
        Check if the input text contains only valid words that can be converted into numbers.
        :param textnum: The input text containing words representing numbers.
        :return: true if input is valid, false otherwise.
        >>> w2n = Words2Numbers()
        >>> w2n.is_valid_input("thirty-two")
        false
        */
        
    }
}

