import std.collection.ArrayList

func test_get_page_1() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let page_number = 1
    let expected_page = ArrayList<Int64>([1, 2, 3])
    let actual_page = page_util.get_page(page_number)
    if (actual_page != expected_page) {
        throw Exception("Test failed!")
    }
}

func test_get_page_2() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let page_number = 2
    let expected_page = ArrayList<Int64>([4, 5, 6])
    let actual_page = page_util.get_page(page_number)
    if (actual_page != expected_page) {
        throw Exception("Test failed!")
    }
}

func test_get_page_3() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let page_number = 3
    let expected_page = ArrayList<Int64>([7, 8, 9])
    let actual_page = page_util.get_page(page_number)
    if (actual_page != expected_page) {
        throw Exception("Test failed!")
    }
}

func test_get_page_4() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)

    let page_number = 4
    let expected_page = ArrayList<Int64>([10])
    let actual_page = page_util.get_page(page_number)
    if (actual_page != expected_page) {
        throw Exception("Test failed!")
    }
}

func test_get_page_5() {
    let data = ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    let page_size = 3
    let page_util = PageUtil(data, page_size)
    
    let invalid_page_number = 0
    let empty_page = ArrayList<Int64>()
    let actual_page = page_util.get_page(invalid_page_number)
    if (actual_page != empty_page) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_page_1()
    test_get_page_2()
    test_get_page_3()
    test_get_page_4()
    test_get_page_5()
}
