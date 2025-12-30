import std.collection.ArrayList
import std.regex.Regex

class LongestWord {

    /*
    This is a class allows to add words to a list and find the longest word in a given sentence by comparing the words with the ones in the word list.
    */

    let word_list: ArrayList<String>

    public init() {
        /*
        Initialize a list of word.
        */
        this.word_list = ArrayList<String>()
    }

    public func add_word(word: String): Unit {
        /*
        append the input word into this.word_list
        :param word: String, input word
        */
        
    }

    public func find_longest_word(sentence: String): String {
        /*
        Remove punctuation marks and split a sentence into a list of word. Find the longest splited word that is in the this.word_list.
        Words are strictly case sensitive.
        :param sentence: a sentence String
        :return String: longest splited word that is in the this.word_list. return '' if this.word_list is empty.
        >>> longestWord = LongestWord()
        >>> longestWord.add_word('A')
        >>> longestWord.add_word('aM')
        >>> longestWord.find_longest_word('I am a student.')
        'a'
        */
        
    }
}

