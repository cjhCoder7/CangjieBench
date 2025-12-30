func test_get_page_info_1() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let page_number = 2
    let expected_info = PageInfo(2, 3, 4, 10, true, true, ArrayList<Int64>([4, 5, 6]))
    let actual_info = page_util.get_page_info(page_number)
    if (actual_info != expected_info) {
        throw Exception("Test failed!")
    }
}

func test_get_page_info_2() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let page_number = 1
    let expected_info = PageInfo(1, 3, 4, 10, false, true, ArrayList<Int64>([1, 2, 3]))
    let actual_info = page_util.get_page_info(page_number)
    if (actual_info != expected_info) {
        throw Exception("Test failed!")
    }
}

func test_get_page_info_3() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let page_number = 3
    let expected_info = PageInfo(3, 3, 4, 10, true, true, ArrayList<Int64>([7, 8, 9]))
    let actual_info = page_util.get_page_info(page_number)
    if (actual_info != expected_info) {
        throw Exception("Test failed!")
    }
}

func test_get_page_info_4() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let page_number = 4
    let expected_info = PageInfo(4, 3, 4, 10, true, false, ArrayList<Int64>([10]))
    let actual_info = page_util.get_page_info(page_number)
    if (actual_info != expected_info) {
        throw Exception("Test failed!")
    }
}

func test_get_page_info_5() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let invalid_page_number = 5
    let actual_info = page_util.get_page_info(invalid_page_number)
    if (actual_info != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_page_info_1()
    test_get_page_info_2()
    test_get_page_info_3()
    test_get_page_info_4()
    test_get_page_info_5()
}