func test_get_path_1() {
    let urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#page")
    let temp = urlhandler.get_path()
    if (temp != "/s?wd=aaa&rsv_spt=1#page") {
        throw Exception("Test failed!")
    }
}

func test_get_path_2() {
    let urlhandler = URLHandler("https://www.bing.com/search?pglt=41&q=humaneval&cvid=4dc2da2bb4bc429eb498c85245ae5253&aqs=edge.0.0l7j69i61j69i60.10008j0j1&FORM=ANNTA1&PC=U531&mkt=zh-CN")
    let temp = urlhandler.get_path()
    if (temp != "/search?pglt=41&q=humaneval&cvid=4dc2da2bb4bc429eb498c85245ae5253&aqs=edge.0.0l7j69i61j69i60.10008j0j1&FORM=ANNTA1&PC=U531&mkt=zh-CN") {
        throw Exception("Test failed!")
    }
}

func test_get_path_3() {
    let urlhandler = URLHandler("  https://github.com/openai/human-eval")
    let temp = urlhandler.get_path()
    if (temp != "/openai/human-eval") {
        throw Exception("Test failed!")
    }
}

func test_get_path_4() {
    let urlhandler = URLHandler("https://github.com/aaa/human-eval")
    let temp = urlhandler.get_path()
    if (temp != "/aaa/human-eval") {
        throw Exception("Test failed!")
    }
}

func test_get_path_5() {
    let urlhandler = URLHandler("https://github.com/bbb/human-eval")
    let temp = urlhandler.get_path()
    if (temp != "/bbb/human-eval") {
        throw Exception("Test failed!")
    }
}

func test_get_path_6() {
    let urlhandler = URLHandler("abcdefg")
    let temp = urlhandler.get_path()
    if (temp != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_path_1()
    test_get_path_2()
    test_get_path_3()
    test_get_path_4()
    test_get_path_5()
    test_get_path_6()
}