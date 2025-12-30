import std.collection.ArrayList
import std.collection.HashMap
import std.regex.Regex
import std.sort.sort
import std.unicode.UnicodeStringExtension

class NLPDataProcessor2 {

    /*
    The class processes NLP data by extracting words from a list of strings, calculating the frequency of each word, and returning the top 5 most frequent words.
    */

    public func process_data(string_list: ArrayList<String>): ArrayList<ArrayList<String>> {
        /*
        keep only English letters and spaces in the string, then convert the string to lower case, and then split the string into a list of words.
        :param string_list: a list of strings
        :return: words_list: a list of words lists
        >>> NLPDataProcessor.process_data(ArrayList<String>(['This is a test.']))
        [['this', 'is', 'a', 'test']]
        */
        
    }

    public func calculate_word_frequency(words_list: ArrayList<ArrayList<String>>): HashMap<String, Int64> {
        /*
        Calculate the word frequency of each word in the list of words list, and sort the word frequency dictionary by value in descending order.
        :param words_list: a list of words lists
        :return: top 5 word frequency dictionary, a dictionary of word frequency, key is word, value is frequency
        >>> NLPDataProcessor.calculate_word_frequency(ArrayList<ArrayList<String>>([ArrayList<String>(['this', 'is', 'a', 'test']), ArrayList<String>(['this', 'is', 'another', 'test'])]))
        {'this': 2, 'is': 2, 'test': 2, 'a': 1, 'another': 1}
        */
        
    }

    public func process(string_list: ArrayList<String>): HashMap<String, Int64> {
        /*
        keep only English letters and spaces in the string, then convert the string to lower case, and then split the string into a list of words. Calculate the word frequency of each word in the list of words list, and sort the word frequency dictionary by value in descending order.
        :param string_list: a list of strings
        :return: top 5 word frequency dictionary, a dictionary of word frequency, key is word, value is frequency
        >>> NLPDataProcessor.process(ArrayList<String>(['This is a test.', 'This is another test.']))
        {'this': 2, 'is': 2, 'test': 2, 'a': 1, 'another': 1}
        */
        
    }
}
