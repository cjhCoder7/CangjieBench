import std.regex.Regex
import std.collection.ArrayList

func test_sub_1() {
    let ru = RegexUtils()
    let res = ru.sub(#'\b\d{3}-\d{3}-\d{4}\b'#, "phone num", "123-456-7890 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    if (res != "phone num abiguygusu phone num kjgufwycs phone num") {
        throw Exception("Test failed!")
    }
}

func test_sub_2() {
    let ru = RegexUtils()
    let res = ru.sub(#'\b\d{3}-\d{3}-\d{4}\b'#, "phone num", "1234567890 abiguygusu 8762869876 kjgufwycs 9877629767")
    if (res != "1234567890 abiguygusu 8762869876 kjgufwycs 9877629767") {
        throw Exception("Test failed!")
    }
}

func test_sub_3() {
    let ru = RegexUtils()
    let res = ru.sub(#'\b\d{3}-\d{3}-\d{4}\b'#, "phone num", "123456-7890 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    if (res != "123456-7890 abiguygusu phone num kjgufwycs phone num") {
        throw Exception("Test failed!")
    }
}

func test_sub_4() {
    let ru = RegexUtils()
    let res = ru.sub(#'\b\d{3}-\d{3}-\d{4}\b'#, "phone num", "123-456-789a abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    if (res != "123-456-789a abiguygusu phone num kjgufwycs phone num") {
        throw Exception("Test failed!")
    }
}

func test_sub_5() {
    let ru = RegexUtils()
    let res = ru.sub(#'\b\d{3}-\d{3}-\d{4}\b'#, "phone num", "123-456-780 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    if (res != "123-456-780 abiguygusu phone num kjgufwycs phone num") {
        throw Exception("Test failed!")
    }
}

main() {
    test_sub_1()
    test_sub_2()
    test_sub_3()
    test_sub_4()
    test_sub_5()
}
