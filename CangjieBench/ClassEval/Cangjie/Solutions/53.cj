import std.collection.ArrayList
import std.regex.Regex

class LongestWord {

    let word_list: ArrayList<String>

    public init() {
        this.word_list = ArrayList<String>()
    }

    public func add_word(word: String): Unit {
        this.word_list.add(word)
    }

    public func find_longest_word(sentence: String): String {
        var longest_word = ""
        var sentence_ = sentence.toAsciiLower()

        let r = Regex(##"[!\"#$%&'()*+,-./:;<=>?@\[\\\]^_`\{|\}~]"##)
        sentence_ = r.replaceAll(sentence_, "")
        let words = sentence_.split(" ")

        for (word in words) {
            if (this.word_list.contains(word) && word.size > longest_word.size) {
                longest_word = word
            }
        }
        return longest_word
    }
}

