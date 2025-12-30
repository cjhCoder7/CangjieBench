func test_process() {
    let processor = NLPDataProcessor2()
    let string_list = ArrayList<String>(["Hello World!", "This is a test.", "Hello World, this is a test."])
    let result = processor.process(string_list)
    let expected_output = HashMap<String, Int64>()
    expected_output["hello"] = 2
    expected_output["world"] = 2
    expected_output["this"] = 2
    expected_output["is"] = 2
    expected_output["a"] = 2
    if (result != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_process2() {
    let processor = NLPDataProcessor2()
    let string_list = ArrayList<String>()
    let result = processor.process_data(string_list)
    let expected_output = ArrayList<ArrayList<String>>()
    if (result != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_calculate3() {
    let processor = NLPDataProcessor2()
    let words_list = ArrayList<ArrayList<String>>()
    let result = processor.calculate_word_frequency(words_list)
    let expected_output = HashMap<String, Int64>()
    if (result != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_process4() {
    let processor = NLPDataProcessor2()
    let string_list = ArrayList<String>(["@#$%^&*", "Special_Characters", "12345"])
    let result = processor.process_data(string_list)
    let expected_output = ArrayList<ArrayList<String>>()
    expected_output.add(ArrayList<String>())
    expected_output.add(ArrayList<String>(["specialcharacters"]))
    expected_output.add(ArrayList<String>())
    if (result != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_process5() {
    let processor = NLPDataProcessor2()
    let string_list = ArrayList<String>(["Hello World! %%%", "This is a %%% test. %%% ", "Hello World, this is a test. %%%"])
    let result = processor.process(string_list)
    let expected_output = HashMap<String, Int64>()
    expected_output["hello"] = 2
    expected_output["world"] = 2
    expected_output["this"] = 2
    expected_output["is"] = 2
    expected_output["a"] = 2
    if (result != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_process6() {
    let processor = NLPDataProcessor2()
    let string_list = ArrayList<String>(["12345", "67890", "98765"])
    let result = processor.process_data(string_list)
    let expected_output = ArrayList<ArrayList<String>>()
    expected_output.add(ArrayList<String>())
    expected_output.add(ArrayList<String>())
    expected_output.add(ArrayList<String>())
    if (result != expected_output) {
        throw Exception("Test failed!")
    }
}

main() {
    test_process()
    test_process2()
    test_calculate3()
    test_process4()
    test_process5()
    test_process6()
}