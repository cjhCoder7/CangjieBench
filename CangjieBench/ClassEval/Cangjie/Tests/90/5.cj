func test_urlhandler() {
    let urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#page")
    var temp = urlhandler.get_scheme()
    if (temp != "https") {
        throw Exception("Test failed!")
    }
    temp = urlhandler.get_host()
    if (temp != "www.baidu.com") {
        throw Exception("Test failed!")
    }
    temp = urlhandler.get_path()
    if (temp != "/s?wd=aaa&rsv_spt=1#page") {
        throw Exception("Test failed!")
    }
    let temp2 = urlhandler.get_query_params()
    let expected_query_params = HashMap<String, String>()
    expected_query_params["wd"] = "aaa"
    expected_query_params["rsv_spt"] = "1"
    if (temp2 != expected_query_params) {
        throw Exception("Test failed!")
    }
    temp = urlhandler.get_fragment()
    if (temp != "page") {
        throw Exception("Test failed!")
    }
}

main() {
    test_urlhandler()
}