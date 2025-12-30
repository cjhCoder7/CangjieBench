func test_split_1() {
    let ru = RegexUtils()
    let res = ru.split(#'\b\d{3}-\d{3}-\d{4}\b'#, "123-456-7890 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    let expected = ArrayList<String>(["", " abiguygusu ", " kjgufwycs ", ""])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_2() {
    let ru = RegexUtils()
    let res = ru.split(#'\b\d{3}-\d{3}-\d{4}\b'#, "1234567890 abiguygusu 8762869876 kjgufwycs 9877629767")
    let expected = ArrayList<String>(["1234567890 abiguygusu 8762869876 kjgufwycs 9877629767"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_3() {
    let ru = RegexUtils()
    let res = ru.split(#'\b\d{3}-\d{3}-\d{4}\b'#, "111-111-1111 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    let expected = ArrayList<String>(["", " abiguygusu ", " kjgufwycs ", ""])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_4() {
    let ru = RegexUtils()
    let res = ru.split(#'\b\d{3}-\d{3}-\d{4}\b'#, "123456-7890 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    let expected = ArrayList<String>(["123456-7890 abiguygusu ", " kjgufwycs ", ""])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_split_5() {
    let ru = RegexUtils()
    let res = ru.split(#'\b\d{3}-\d{3}-\d{4}\b'#, "123-456-789a abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    let expected = ArrayList<String>(["123-456-789a abiguygusu ", " kjgufwycs ", ""])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_split_1()
    test_split_2()
    test_split_3()
    test_split_4()
    test_split_5()
}