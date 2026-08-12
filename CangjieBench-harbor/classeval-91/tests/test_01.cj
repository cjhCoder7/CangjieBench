import std.collection.ArrayList

func test_parse_1() {
    let url_path = UrlPath()
    url_path.parse("/foo/bar/")
    let expected_segments = ArrayList<String>(["foo", "bar"])
    if (url_path.segments != expected_segments) {
        throw Exception("Test failed!")
    }
    if (url_path.with_end_tag != true) {
        throw Exception("Test failed!")
    }
}

func test_parse_2() {
    let url_path = UrlPath()
    url_path.parse("aaa/bbb")
    let expected_segments = ArrayList<String>(["aaa", "bbb"])
    if (url_path.segments != expected_segments) {
        throw Exception("Test failed!")
    }
    if (url_path.with_end_tag != false) {
        throw Exception("Test failed!")
    }
}

func test_parse_3() {
    let url_path = UrlPath()
    url_path.parse("/123/456/")
    let expected_segments = ArrayList<String>(["123", "456"])
    if (url_path.segments != expected_segments) {
        throw Exception("Test failed!")
    }
    if (url_path.with_end_tag != true) {
        throw Exception("Test failed!")
    }
}

func test_parse_4() {
    let url_path = UrlPath()
    url_path.parse("/123/456/789")
    let expected_segments = ArrayList<String>(["123", "456", "789"])
    if (url_path.segments != expected_segments) {
        throw Exception("Test failed!")
    }
    if (url_path.with_end_tag != false) {
        throw Exception("Test failed!")
    }
}

func test_parse_5() {
    let url_path = UrlPath()
    url_path.parse("/foo/bar")
    let expected_segments = ArrayList<String>(["foo", "bar"])
    if (url_path.segments != expected_segments) {
        throw Exception("Test failed!")
    }
    if (url_path.with_end_tag != false) {
        throw Exception("Test failed!")
    }
}

func test_parse_6() {
    let url_path = UrlPath()
    url_path.parse("")
    let expected_segments = ArrayList<String>()
    if (url_path.segments != expected_segments) {
        throw Exception("Test failed!")
    }
    if (url_path.with_end_tag != false) {
        throw Exception("Test failed!")
    }
}

func test_parse_7() {
    let url_path = UrlPath()
    url_path.parse("//")
    let expected_segments = ArrayList<String>()
    if (url_path.segments != expected_segments) {
        throw Exception("Test failed!")
    }
    if (url_path.with_end_tag != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_parse_1()
    test_parse_2()
    test_parse_3()
    test_parse_4()
    test_parse_5()
    test_parse_6()
    test_parse_7()
}
