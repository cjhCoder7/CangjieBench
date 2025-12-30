func test_search_1() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let keyword = "1"
    let expected_results = SearchInfo("1", 2, 1, ArrayList<Int64>([1, 10]))
    let actual_results = page_util.search(keyword)
    if (actual_results != expected_results) {
        throw Exception("Test failed!")
    }
}

func test_search_2() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)
    
    let keyword = "2"
    let expected_results = SearchInfo("2", 1, 1, ArrayList<Int64>([2]))
    let actual_results = page_util.search(keyword)
    if (actual_results != expected_results) {
        throw Exception("Test failed!")
    }
}

func test_search_3() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let keyword = "3"
    let expected_results = SearchInfo("3", 1, 1, ArrayList<Int64>([3]))
    let actual_results = page_util.search(keyword)
    if (actual_results != expected_results) {
        throw Exception("Test failed!")
    }
}

func test_search_4() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let keyword = "4"
    let expected_results = SearchInfo("4", 1, 1, ArrayList<Int64>([4]))
    let actual_results = page_util.search(keyword)
    if (actual_results != expected_results) {
        throw Exception("Test failed!")
    }
}

func test_search_5() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let keyword = "11"
    let expected_results = SearchInfo("11", 0, 0, ArrayList<Int64>())
    let actual_results = page_util.search(keyword)
    if (actual_results != expected_results) {
        throw Exception("Test failed!")
    }
}

main() {
    test_search_1()
    test_search_2()
    test_search_3()
    test_search_4()
    test_search_5()
}