func test_calculate_word_frequency() {
    let processor = NLPDataProcessor2()
    let words_list = ArrayList<ArrayList<String>>()
    words_list.add(ArrayList<String>(["hello", "world"]))
    words_list.add(ArrayList<String>(["this", "is", "a", "test"]))
    words_list.add(ArrayList<String>(["hello", "world", "this", "is", "another", "test"]))
    words_list.add(ArrayList<String>(["hello", "hello", "world"]))
    
    let result = processor.calculate_word_frequency(words_list)
    let expected_output = HashMap<String, Int64>()
    expected_output["hello"] = 4
    expected_output["world"] = 3
    expected_output["this"] = 2
    expected_output["is"] = 2
    expected_output["test"] = 2
    
    if (result != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_calculate_word_frequency2() {
    let processor = NLPDataProcessor2()
    let words_list = ArrayList<ArrayList<String>>()
    words_list.add(ArrayList<String>(["hello", "world"]))
    words_list.add(ArrayList<String>(["this", "is", "a", "test"]))
    words_list.add(ArrayList<String>(["hello", "world", "this", "is", "another", "test"]))
    words_list.add(ArrayList<String>(["hello", "hello", "world"]))
    words_list.add(ArrayList<String>(["world", "world", "world"]))
    
    let result = processor.calculate_word_frequency(words_list)
    let expected_output = HashMap<String, Int64>()
    expected_output["world"] = 6
    expected_output["hello"] = 4
    expected_output["this"] = 2
    expected_output["is"] = 2
    expected_output["test"] = 2
    
    if (result != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_calculate_word_frequency3() {
    let processor = NLPDataProcessor2()
    let words_list = ArrayList<ArrayList<String>>()
    words_list.add(ArrayList<String>(["hello", "world"]))
    words_list.add(ArrayList<String>(["hello", "hello", "world"]))
    words_list.add(ArrayList<String>(["world", "world"]))
    
    let result = processor.calculate_word_frequency(words_list)
    let expected_output = HashMap<String, Int64>()
    expected_output["world"] = 4
    expected_output["hello"] = 3
    
    if (result != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_calculate_word_frequency4() {
    let processor = NLPDataProcessor2()
    let words_list = ArrayList<ArrayList<String>>()
    words_list.add(ArrayList<String>(["hello", "world"]))
    words_list.add(ArrayList<String>(["this", "is", "a", "%%%"]))
    words_list.add(ArrayList<String>(["hello", "world", "this", "is", "another", "%%%"]))
    words_list.add(ArrayList<String>(["hello", "hello", "world"]))
    words_list.add(ArrayList<String>(["%%%", "world", "a", "%%%"]))
    words_list.add(ArrayList<String>(["%%%", "hello", "%%%"]))
    
    let result = processor.calculate_word_frequency(words_list)
    let expected_output = HashMap<String, Int64>()
    expected_output["%%%"] = 6
    expected_output["hello"] = 5
    expected_output["world"] = 4
    expected_output["is"] = 2
    expected_output["this"] = 2
    
    if (result != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_calculate_word_frequency5() {
    let processor = NLPDataProcessor2()
    let words_list = ArrayList<ArrayList<String>>()
    words_list.add(ArrayList<String>(["hello", "world"]))
    words_list.add(ArrayList<String>(["this", "is", "a", "%%%"]))
    words_list.add(ArrayList<String>(["hello", "world", "this", "is", "another", "%%%"]))
    words_list.add(ArrayList<String>(["hello", "hello", "world"]))
    words_list.add(ArrayList<String>(["%%%", "world", "a", "%%%"]))
    words_list.add(ArrayList<String>(["%%%", "hello", "%%%"]))
    words_list.add(ArrayList<String>(["hello", "world"]))
    words_list.add(ArrayList<String>(["this", "is", "a", "%%%"]))
    words_list.add(ArrayList<String>(["hello", "world", "this", "is", "another", "%%%"]))
    words_list.add(ArrayList<String>(["hello", "hello", "world"]))
    words_list.add(ArrayList<String>(["%%%", "world", "a", "%%%"]))
    words_list.add(ArrayList<String>(["%%%", "hello", "%%%"]))
    
    let result = processor.calculate_word_frequency(words_list)
    let expected_output = HashMap<String, Int64>()
    expected_output["%%%"] = 12
    expected_output["hello"] = 10
    expected_output["world"] = 8
    expected_output["is"] = 4
    expected_output["this"] = 4
    
    if (result != expected_output) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_word_frequency()
    test_calculate_word_frequency2()
    test_calculate_word_frequency3()
    test_calculate_word_frequency4()
    test_calculate_word_frequency5()
}