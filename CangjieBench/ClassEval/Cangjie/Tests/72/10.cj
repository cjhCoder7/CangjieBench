func test_regexutils() {
    let ru = RegexUtils()
    var res = ru.match_regex("\\b\\d{3}-\\d{3}-\\d{4}\\b", "123-456-7890")
    if (res != true) {
        throw Exception("Test failed!")
    }

    var res2 = ru.findall("\\b\\d{3}-\\d{3}-\\d{4}\\b", "123-456-7890 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    let expected_findall = ArrayList<String>(["123-456-7890", "876-286-9876", "987-762-9767"])
    if (res2 != expected_findall) {
        throw Exception("Test failed!")
    }

    var res3 = ru.split("\\b\\d{3}-\\d{3}-\\d{4}\\b", "123-456-7890 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    let expected_split = ArrayList<String>(["", " abiguygusu ", " kjgufwycs ", ""])
    if (res3 != expected_split) {
        throw Exception("Test failed!")
    }

    var res4 = ru.sub("\\b\\d{3}-\\d{3}-\\d{4}\\b", "phone num", "123-456-7890 abiguygusu 876-286-9876 kjgufwycs 987-762-9767")
    if (res4 != "phone num abiguygusu phone num kjgufwycs phone num") {
        throw Exception("Test failed!")
    }

    var pat = ru.generate_email_pattern()
    var res5 = ru.match_regex(pat, "iustd87t2euh@163.com")
    if (res5 != true) {
        throw Exception("Test failed!")
    }

    pat = ru.generate_phone_number_pattern()
    var res6 = ru.match_regex(pat, "123-456-7890")
    if (res6 != true) {
        throw Exception("Test failed!")
    }

    pat = ru.generate_split_sentences_pattern()
    var res7 = ru.match_regex(pat, "? Y")
    if (res7 != true) {
        throw Exception("Test failed!")
    }

    var res8 = ru.split_sentences("Aaa. Bbbb? Ccc!")
    let expected_split_sentences = ArrayList<String>(["Aaa", "Bbbb", "Ccc!"])
    if (res8 != expected_split_sentences) {
        throw Exception("Test failed!")
    }

    var res9 = ru.validate_phone_number("123-456-7890")
    if (res9 != true) {
        throw Exception("Test failed!")
    }

    var res10 = ru.extract_email("abcdefg@163.com ygusyfysy@126.com wljduyuv@qq.com")
    let expected_extract_email = ArrayList<String>(["abcdefg@163.com", "ygusyfysy@126.com", "wljduyuv@qq.com"])
    if (res10 != expected_extract_email) {
        throw Exception("Test failed!")
    }
}

main() {
    test_regexutils()
}