func test_get_scheme_1() {
    let urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#page")
    let temp = urlhandler.get_scheme()
    if (temp != "https") {
        throw Exception("Test failed!")
    }
}

func test_get_scheme_2() {
    let urlhandler = URLHandler("https://www.bing.com/search?pglt=41&q=humaneval&cvid=4dc2da2bb4bc429eb498c85245ae5253&aqs=edge.0.0l7j69i61j69i60.10008j0j1&FORM=ANNTA1&PC=U531&mkt=zh-CN")
    let temp = urlhandler.get_scheme()
    if (temp != "https") {
        throw Exception("Test failed!")
    }
}

func test_get_scheme_3() {
    let urlhandler = URLHandler("https://github.com/openai/human-eval")
    let temp = urlhandler.get_scheme()
    if (temp != "https") {
        throw Exception("Test failed!")
    }
}

func test_get_scheme_4() {
    let urlhandler = URLHandler("aaa://github.com/openai/human-eval")
    let temp = urlhandler.get_scheme()
    if (temp != "aaa") {
        throw Exception("Test failed!")
    }
}

func test_get_scheme_5() {
    let urlhandler = URLHandler("bbb://github.com/openai/human-eval")
    let temp = urlhandler.get_scheme()
    if (temp != "bbb") {
        throw Exception("Test failed!")
    }
}

func test_get_scheme_6() {
    let urlhandler = URLHandler("abcdefg")
    let temp = urlhandler.get_scheme()
    if (temp != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_scheme_1()
    test_get_scheme_2()
    test_get_scheme_3()
    test_get_scheme_4()
    test_get_scheme_5()
    test_get_scheme_6()
}