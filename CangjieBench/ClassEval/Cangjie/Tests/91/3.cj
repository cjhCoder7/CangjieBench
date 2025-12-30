func test_urlpath() {
    var url_path = UrlPath()
    url_path.add("foo")
    url_path.add("bar")
    let expected_segments1 = ArrayList<String>(["foo", "bar"])
    if (url_path.segments != expected_segments1) {
        throw Exception("Test failed!")
    }

    url_path = UrlPath()
    url_path.parse("/foo/bar/")
    let expected_segments2 = ArrayList<String>(["foo", "bar"])
    if (url_path.segments != expected_segments2) {
        throw Exception("Test failed!")
    }
    if (url_path.with_end_tag != true) {
        throw Exception("Test failed!")
    }

    let fixed_path = UrlPath.fix_path("/foo/bar/")
    if (fixed_path != "foo/bar") {
        throw Exception("Test failed!")
    }
}

main() {
    test_urlpath()
}