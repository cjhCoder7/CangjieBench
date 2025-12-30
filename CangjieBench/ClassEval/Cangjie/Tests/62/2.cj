func test_process() {
    let processor = NLPDataProcessor()
    let string_list = ArrayList<String>(["This is a test.", "This is an apple.", "This is the dog."])
    let words_list = processor.process(string_list)
    let expected_words_list = ArrayList<ArrayList<String>>()
    expected_words_list.add(ArrayList<String>(["This", "is", "test."]))
    expected_words_list.add(ArrayList<String>(["This", "is", "apple."]))
    expected_words_list.add(ArrayList<String>(["This", "is", "dog."]))
    if (words_list != expected_words_list) {
        throw Exception("Test failed!")
    }
}

func test_process_with_empty_string_list() {
    let processor = NLPDataProcessor()
    let string_list = ArrayList<String>()
    let words_list = processor.process(string_list)
    let expected_words_list = ArrayList<ArrayList<String>>()
    if (words_list != expected_words_list) {
        throw Exception("Test failed!")
    }
}

func test_process_with_single_word_sentences() {
    let processor = NLPDataProcessor()
    let string_list = ArrayList<String>(["Hello aa", "World"])
    let words_list = processor.process(string_list)
    let expected_words_list = ArrayList<ArrayList<String>>()
    expected_words_list.add(ArrayList<String>(["Hello", "aa"]))
    expected_words_list.add(ArrayList<String>(["World"]))
    if (words_list != expected_words_list) {
        throw Exception("Test failed!")
    }
}

func test_process_with_stop_words_only() {
    let processor = NLPDataProcessor()
    let string_list = ArrayList<String>(["a", "an", "the"])
    let words_list = processor.process(string_list)
    let expected_words_list = ArrayList<ArrayList<String>>()
    expected_words_list.add(ArrayList<String>())
    expected_words_list.add(ArrayList<String>())
    expected_words_list.add(ArrayList<String>())
    if (words_list != expected_words_list) {
        throw Exception("Test failed!")
    }
}

func test_process_with_stop_words_only_2() {
    let processor = NLPDataProcessor()
    let string_list = ArrayList<String>(["a", "an", "the", "This"])
    let words_list = processor.process(string_list)
    let expected_words_list = ArrayList<ArrayList<String>>()
    expected_words_list.add(ArrayList<String>())
    expected_words_list.add(ArrayList<String>())
    expected_words_list.add(ArrayList<String>())
    expected_words_list.add(ArrayList<String>(["This"]))
    if (words_list != expected_words_list) {
        throw Exception("Test failed!")
    }
}

main() {
    test_process()
    test_process_with_empty_string_list()
    test_process_with_single_word_sentences()
    test_process_with_stop_words_only()
    test_process_with_stop_words_only_2()
}