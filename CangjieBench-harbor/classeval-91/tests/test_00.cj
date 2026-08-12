import std.collection.ArrayList

func test_add_1() {
    let url_path = UrlPath()
    url_path.add("foo")
    url_path.add("bar")
    let expected = ArrayList<String>(["foo", "bar"])
    if (url_path.segments != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_2() {
    let url_path = UrlPath()
    url_path.add("aaa")
    url_path.add("bbb")
    let expected = ArrayList<String>(["aaa", "bbb"])
    if (url_path.segments != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_3() {
    let url_path = UrlPath()
    url_path.add("123")
    let expected = ArrayList<String>(["123"])
    if (url_path.segments != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_4() {
    let url_path = UrlPath()
    url_path.add("ddd")
    let expected = ArrayList<String>(["ddd"])
    if (url_path.segments != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_5() {
    let url_path = UrlPath()
    url_path.add("eee")
    let expected = ArrayList<String>(["eee"])
    if (url_path.segments != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_1()
    test_add_2()
    test_add_3()
    test_add_4()
    test_add_5()
}
