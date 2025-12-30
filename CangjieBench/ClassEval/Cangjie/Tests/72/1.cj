func test_findall_1() {
    let ru = RegexUtils()
    let res = ru.findall(#'\b\d{3}-\d{3}-\d{4}\b'#, "123-456-7890 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    let expected = ArrayList<String>(["123-456-7890", "876-286-9876", "987-762-9767"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_findall_2() {
    let ru = RegexUtils()
    let res = ru.findall(#'\b\d{3}-\d{3}-\d{4}\b'#, "abiguygusu  kjgufwycs 987-762-9767")
    let expected = ArrayList<String>(["987-762-9767"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_findall_3() {
    let ru = RegexUtils()
    let res = ru.findall(#'\b\d{3}-\d{3}-\d{4}\b'#, "abiguygusu  kjgufwycs ")
    let expected = ArrayList<String>()
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_findall_4() {
    let ru = RegexUtils()
    let res = ru.findall(#'\b\d{3}-\d{3}-\d{4}\b'#, "abiguygusu  111-111-1111 kjgufwycs 987-762-9767")
    let expected = ArrayList<String>(["111-111-1111", "987-762-9767"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_findall_5() {
    let ru = RegexUtils()
    let res = ru.findall(#'\b\d{3}-\d{3}-\d{4}\b'#, "abiguygusu  111-111-111a kjgufwycs 987-762-9767")
    let expected = ArrayList<String>(["987-762-9767"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_findall_1()
    test_findall_2()
    test_findall_3()
    test_findall_4()
    test_findall_5()
}