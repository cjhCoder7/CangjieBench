import std.collection.HashMap

func test_get_host_1() {
    let urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#page")
    let temp = urlhandler.get_host()
    if (temp != "www.baidu.com") {
        throw Exception("Test failed!")
    }
}

func test_get_host_2() {
    let urlhandler = URLHandler("https://www.bing.com/search?pglt=41&q=humaneval&cvid=4dc2da2bb4bc429eb498c85245ae5253&aqs=edge.0.0l7j69i61j69i60.10008j0j1&FORM=ANNTA1&PC=U531&mkt=zh-CN")
    let temp = urlhandler.get_host()
    if (temp != "www.bing.com") {
        throw Exception("Test failed!")
    }
}

func test_get_host_3() {
    let urlhandler = URLHandler("https://github.com/openai/human-eval")
    let temp = urlhandler.get_host()
    if (temp != "github.com") {
        throw Exception("Test failed!")
    }
}

func test_get_host_4() {
    let urlhandler = URLHandler("https://aaa.com/openai/human-eval")
    let temp = urlhandler.get_host()
    if (temp != "aaa.com") {
        throw Exception("Test failed!")
    }
}

func test_get_host_5() {
    let urlhandler = URLHandler("https://bbb.com/openai/human-eval")
    let temp = urlhandler.get_host()
    if (temp != "bbb.com") {
        throw Exception("Test failed!")
    }
}

func test_get_host_6() {
    let urlhandler = URLHandler("abcdefg")
    let temp = urlhandler.get_host()
    if (temp != None) {
        throw Exception("Test failed!")
    }
}

func test_get_host_7() {
    let urlhandler = URLHandler("https://bbb.com")
    let temp = urlhandler.get_host()
    if (temp != "bbb.com") {
        throw Exception("Test failed!")
    }
}

func test_get_host_8() {
    let urlhandler = URLHandler("https://bbb.com/")
    let temp = urlhandler.get_host()
    if (temp != "bbb.com") {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_host_1()
    test_get_host_2()
    test_get_host_3()
    test_get_host_4()
    test_get_host_5()
    test_get_host_6()
    test_get_host_7()
    test_get_host_8()
}
