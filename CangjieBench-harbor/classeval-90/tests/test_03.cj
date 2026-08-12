import std.collection.HashMap

func test_get_query_params_1() {
    let urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#page")
    let temp = urlhandler.get_query_params()
    let expected = HashMap<String, String>()
    expected["wd"] = "aaa"
    expected["rsv_spt"] = "1"
    if (temp != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_query_params_2() {
    let urlhandler = URLHandler("https://www.bing.com/search?pglt=41&q=humaneval&cvid=4dc2da2bb4bc429eb498c85245ae5253&aqs=edge.0.0l7j69i61j69i60.10008j0j1&FORM=ANNTA1&PC=U531#")
    let temp = urlhandler.get_query_params()
    let expected = HashMap<String, String>()
    expected["pglt"] = "41"
    expected["q"] = "humaneval"
    expected["cvid"] = "4dc2da2bb4bc429eb498c85245ae5253"
    expected["aqs"] = "edge.0.0l7j69i61j69i60.10008j0j1"
    expected["FORM"] = "ANNTA1"
    expected["PC"] = "U531"
    if (temp != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_query_params_3() {
    let urlhandler = URLHandler("https://github.com/openai/human-eval")
    let temp = urlhandler.get_query_params()
    if (temp != None) {
        throw Exception("Test failed!")
    }
}

func test_get_query_params_4() {
    let urlhandler = URLHandler("https://www.baidu.com/s?wd=bbb&rsv_spt=1#page")
    let temp = urlhandler.get_query_params()
    let expected = HashMap<String, String>()
    expected["wd"] = "bbb"
    expected["rsv_spt"] = "1"
    if (temp != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_query_params_5() {
    let urlhandler = URLHandler("https://www.baidu.com/s?wd=ccc&rsv_spt=1#page")
    let temp = urlhandler.get_query_params()
    let expected = HashMap<String, String>()
    expected["wd"] = "ccc"
    expected["rsv_spt"] = "1"
    if (temp != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_query_params_6() {
    let urlhandler = URLHandler("https://www.baidu.com/s?&#page")
    let temp = urlhandler.get_query_params()
    let expected = HashMap<String, String>()
    if (temp != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_query_params_1()
    test_get_query_params_2()
    test_get_query_params_3()
    test_get_query_params_4()
    test_get_query_params_5()
    test_get_query_params_6()
}
