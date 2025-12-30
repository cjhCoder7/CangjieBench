func test_construct_stop_word_list() {
    let processor = NLPDataProcessor()
    let stop_word_list = processor.construct_stop_word_list()
    let expected_stop_words = ArrayList<String>(["a", "an", "the"])
    if (stop_word_list != expected_stop_words) {
        throw Exception("Test failed!")
    }
}

main() {
    test_construct_stop_word_list()
}