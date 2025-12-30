func test_pageutil() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    var page_number = 1
    let expected_page = ArrayList<Int64>([1, 2, 3])
    let actual_page = page_util.get_page(page_number)
    if (actual_page != expected_page) {
        throw Exception("Test failed!")
    }

    page_number = 2
    let expected_info = PageInfo(2, 3, 4, 10, true, true, ArrayList<Int64>([4, 5, 6]))
    let actual_info = page_util.get_page_info(page_number)
    if (actual_info != expected_info) {
        throw Exception("Test failed!")
    }

    let keyword = "4"
    let expected_results = SearchInfo("4", 1, 1, ArrayList<Int64>([4]))
    let actual_results = page_util.search(keyword)
    if (actual_results != expected_results) {
        throw Exception("Test failed!")
    }
}

main() {
    test_pageutil()
}