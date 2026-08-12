import std.collection.ArrayList

func test_fix_path_1() {
    let fixed_path = UrlPath.fix_path("/foo/bar/")
    if (fixed_path != "foo/bar") {
        throw Exception("Test failed!")
    }
}

func test_fix_path_2() {
    let fixed_path = UrlPath.fix_path("/aaa/bbb/")
    if (fixed_path != "aaa/bbb") {
        throw Exception("Test failed!")
    }
}

func test_fix_path_3() {
    let fixed_path = UrlPath.fix_path("/a/b/")
    if (fixed_path != "a/b") {
        throw Exception("Test failed!")
    }
}

func test_fix_path_4() {
    let fixed_path = UrlPath.fix_path("/111/222/")
    if (fixed_path != "111/222") {
        throw Exception("Test failed!")
    }
}

func test_fix_path_5() {
    let fixed_path = UrlPath.fix_path("/a/")
    if (fixed_path != "a") {
        throw Exception("Test failed!")
    }
}

func test_fix_path_6() {
    let fixed_path = UrlPath.fix_path("")
    if (fixed_path != "") {
        throw Exception("Test failed!")
    }
}

main() {
    test_fix_path_1()
    test_fix_path_2()
    test_fix_path_3()
    test_fix_path_4()
    test_fix_path_5()
    test_fix_path_6()
}
