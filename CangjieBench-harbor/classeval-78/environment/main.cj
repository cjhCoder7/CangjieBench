import std.collection.ArrayList
import std.regex.Regex
import std.unicode.UnicodeStringExtension

class SplitSentence {

    /*
    The class allows to split sentences, count words in a sentence, and process a text file to find the maximum word count.
    */

    public func split_sentences(sentences_string: String): ArrayList<String> {
        /*
        Split a string into a list of sentences. Sentences end with . or ? and with a space after that. Please note that Mr. also end with . but are not sentences.
        :param sentences_string: String, string to split
        :return: ArrayList<String>, split sentence list
        >>> ss = SplitSentence()
        >>> ss.split_sentences("aaa aaaa. bb bbbb bbb? cccc cccc. dd ddd?")
        ['aaa aaaa.', 'bb bbbb bbb?', 'cccc cccc.', 'dd ddd?']
        */
        
    }

    public func count_words(sentence: String): Int64 {
        /*
        Count the number of words in a sentence. Note that words are separated by spaces and that punctuation marks and numbers are not counted as words.
        :param sentence:String, sentence to be counted, where words are separated by spaces
        :return:Int64, number of words in the sentence
        >>> ss.count_words("abc def")
        2
        */
        
    }

    public func process_text_file(sentences_string: String): Int64 {
        /*
        Given a text, return the number of words in the longest sentence
        :param sentences_string: String, undivided long sentence
        :return:Int64, the number of words in the longest sentence
        >>> ss.process_text_file("aaa aaaa. bb bbbb bbb? cccc ccccccc cc ccc. dd ddd?")
        4
        */
        
    }
}

