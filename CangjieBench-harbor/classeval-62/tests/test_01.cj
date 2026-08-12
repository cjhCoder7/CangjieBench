import std.collection.ArrayList

func test_remove_stop_words() {
    let processor = NLPDataProcessor()
    let string_list = ArrayList<String>(["This is a test", "This is an apple", "This is the dog"])
    let stop_word_list = ArrayList<String>(["a", "an", "the"])
    let words_list = processor.remove_stop_words(string_list, stop_word_list)
    let expected_words_list = ArrayList<ArrayList<String>>()
    expected_words_list.add(ArrayList<String>(["This", "is", "test"]))
    expected_words_list.add(ArrayList<String>(["This", "is", "apple"]))
    expected_words_list.add(ArrayList<String>(["This", "is", "dog"]))
    if (words_list != expected_words_list) {
        throw Exception("Test failed!")
    }
}

func test_remove_stop_words_2() {
    let processor = NLPDataProcessor()
    let string_list = ArrayList<String>(["a", "an", "the"])
    let stop_word_list = ArrayList<String>(["a", "an", "the"])
    let words_list = processor.remove_stop_words(string_list, stop_word_list)
    let expected_words_list = ArrayList<ArrayList<String>>()
    expected_words_list.add(ArrayList<String>())
    expected_words_list.add(ArrayList<String>())
    expected_words_list.add(ArrayList<String>())
    if (words_list != expected_words_list) {
        throw Exception("Test failed!")
    }
}

func test_remove_stop_words_3() {
    let processor = NLPDataProcessor()
    let string_list = ArrayList<String>()
    let stop_word_list = ArrayList<String>(["a", "an", "the"])
    let words_list = processor.remove_stop_words(string_list, stop_word_list)
    let expected_words_list = ArrayList<ArrayList<String>>()
    if (words_list != expected_words_list) {
        throw Exception("Test failed!")
    }
}

func test_remove_stop_words_4() {
    let processor = NLPDataProcessor()
    let string_list = ArrayList<String>(["This is a test", "This is an apple", "This is the dog"])
    let stop_word_list = ArrayList<String>()
    let words_list = processor.remove_stop_words(string_list, stop_word_list)
    let expected_words_list = ArrayList<ArrayList<String>>()
    expected_words_list.add(ArrayList<String>(["This", "is", "a", "test"]))
    expected_words_list.add(ArrayList<String>(["This", "is", "an", "apple"]))
    expected_words_list.add(ArrayList<String>(["This", "is", "the", "dog"]))
    if (words_list != expected_words_list) {
        throw Exception("Test failed!")
    }
}

func test_remove_stop_words_5() {
    let processor = NLPDataProcessor()
    let string_list = ArrayList<String>(["This is a test", "This is an apple", "This is the dog"])
    let stop_word_list = ArrayList<String>(["a", "an", "the", "This", "is"])
    let words_list = processor.remove_stop_words(string_list, stop_word_list)
    let expected_words_list = ArrayList<ArrayList<String>>()
    expected_words_list.add(ArrayList<String>(["test"]))
    expected_words_list.add(ArrayList<String>(["apple"]))
    expected_words_list.add(ArrayList<String>(["dog"]))
    if (words_list != expected_words_list) {
        throw Exception("Test failed!")
    }
}

main() {
    test_remove_stop_words()
    test_remove_stop_words_2()
    test_remove_stop_words_3()
    test_remove_stop_words_4()
    test_remove_stop_words_5()
}
