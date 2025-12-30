func test_get_fragment_1() {
    let urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#page")
    let temp = urlhandler.get_fragment()
    if (temp != "page") {
        throw Exception("Test failed!")
    }
}

func test_get_fragment_2() {
    let urlhandler = URLHandler("https://www.bing.com/search?pglt=41&q=humaneval&cvid=4dc2da2bb4bc429eb498c85245ae5253&aqs=edge.0.0l7j69i61j69i60.10008j0j1&FORM=ANNTA1&PC=U531&mkt=zh-CN")
    let temp = urlhandler.get_fragment()
    if (temp != None) {
        throw Exception("Test failed!")
    }
}

func test_get_fragment_3() {
    let urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#aaa")
    let temp = urlhandler.get_fragment()
    if (temp != "aaa") {
        throw Exception("Test failed!")
    }
}

func test_get_fragment_4() {
    let urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#bbb")
    let temp = urlhandler.get_fragment()
    if (temp != "bbb") {
        throw Exception("Test failed!")
    }
}

func test_get_fragment_5() {
    let urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#ccc")
    let temp = urlhandler.get_fragment()
    if (temp != "ccc") {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_fragment_1()
    test_get_fragment_2()
    test_get_fragment_3()
    test_get_fragment_4()
    test_get_fragment_5()
}