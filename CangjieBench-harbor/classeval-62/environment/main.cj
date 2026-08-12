import std.collection.ArrayList

class NLPDataProcessor {

    /*
    The class processes NLP data by removing stop words from a list of strings using a pre-defined stop word list.
    */

    public func construct_stop_word_list(): ArrayList<String> {
        /*
        Construct a stop word list including 'a', 'an', 'the'.
        :return: a list of stop words
        >>> nlp_data_processor = NLPDataProcessor()
        >>> nlp_data_processor.construct_stop_word_list()
        ['a', 'an', 'the']
        */
        
    }

    public func remove_stop_words(string_list: ArrayList<String>, stop_word_list: ArrayList<String>): ArrayList<ArrayList<String>> {
        /*
        Remove all the stop words from the list of strings.
        :param string_list: a list of strings
        :param stop_word_list: a list of stop words
        :return: a list of words without stop words
        >>> nlp_data_processor = NLPDataProcessor()
        >>> nlp_data_processor.process(ArrayList<String>(['This is a test.']), ArrayList<String>(['a', 'an', 'the']))
        [['This', 'is', 'test.']]
        */
        
    }

    public func process(string_list: ArrayList<String>): ArrayList<ArrayList<String>> {
        /*
        Construct a stop word list including 'a', 'an', 'the', and remove all the stop words from the list of strings.
        :param string_list: a list of strings
        :return: a list of words without stop words
        >>> nlp_data_processor = NLPDataProcessor()
        >>> NLPDataProcessor.process(ArrayList<String>(['This is a test.']))
        [['This', 'is', 'test.']]
        */
        
    }
}

