func test_process_data() {
    let processor = NLPDataProcessor2()
    let string_list = ArrayList<String>(["Hello World!", "This is a test."])
    let expected_output = ArrayList<ArrayList<String>>()
    expected_output.add(ArrayList<String>(["hello", "world"]))
    expected_output.add(ArrayList<String>(["this", "is", "a", "test"]))
    if (processor.process_data(string_list) != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_process_data2() {
    let processor = NLPDataProcessor2()
    let string_list = ArrayList<String>(["12345", "Special@Characters"])
    let expected_output = ArrayList<ArrayList<String>>()
    expected_output.add(ArrayList<String>())
    expected_output.add(ArrayList<String>(["specialcharacters"]))
    if (processor.process_data(string_list) != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_process_data3() {
    let processor = NLPDataProcessor2()
    let string_list = ArrayList<String>()
    let expected_output = ArrayList<ArrayList<String>>()
    if (processor.process_data(string_list) != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_process_data4() {
    let processor = NLPDataProcessor2()
    let string_list = ArrayList<String>(["Hello World!", "This is a test.", "12345", "Special@Characters"])
    let expected_output = ArrayList<ArrayList<String>>()
    expected_output.add(ArrayList<String>(["hello", "world"]))
    expected_output.add(ArrayList<String>(["this", "is", "a", "test"]))
    expected_output.add(ArrayList<String>())
    expected_output.add(ArrayList<String>(["specialcharacters"]))
    if (processor.process_data(string_list) != expected_output) {
        throw Exception("Test failed!")
    }
}

func test_process_data5() {
    let processor = NLPDataProcessor2()
    let string_list = ArrayList<String>(["Hello World!", "This is a test.", "12345", "Special@Characters", "Hello World!", "This is a test.", "12345", "Special@Characters"])
    let expected_output = ArrayList<ArrayList<String>>()
    expected_output.add(ArrayList<String>(["hello", "world"]))
    expected_output.add(ArrayList<String>(["this", "is", "a", "test"]))
    expected_output.add(ArrayList<String>())
    expected_output.add(ArrayList<String>(["specialcharacters"]))
    expected_output.add(ArrayList<String>(["hello", "world"]))
    expected_output.add(ArrayList<String>(["this", "is", "a", "test"]))
    expected_output.add(ArrayList<String>())
    expected_output.add(ArrayList<String>(["specialcharacters"]))
    if (processor.process_data(string_list) != expected_output) {
        throw Exception("Test failed!")
    }
}

main() {
    test_process_data()
    test_process_data2()
    test_process_data3()
    test_process_data4()
    test_process_data5()
}