func test_view_book_quantity_1() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity: 2)
    if (2 != bookManagement.view_book_quantity("book1")) {
        throw Exception("Test failed!")
    }
}

func test_view_book_quantity_2() {
    let bookManagement = BookManagement()
    if (0 != bookManagement.view_book_quantity("book1")) {
        throw Exception("Test failed!")
    }
}

func test_view_book_quantity_3() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity: 2)
    if (2 != bookManagement.view_book_quantity("book1")) {
        throw Exception("Test failed!")
    }
}

func test_view_book_quantity_4() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity: 2)
    bookManagement.remove_book("book1", 2)
    if (0 != bookManagement.view_book_quantity("book1")) {
        throw Exception("Test failed!")
    }
}

func test_view_book_quantity_5() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity: 3)
    bookManagement.remove_book("book1", 2)
    if (1 != bookManagement.view_book_quantity("book1")) {
        throw Exception("Test failed!")
    }
}

main() {
    test_view_book_quantity_1()
    test_view_book_quantity_2()
    test_view_book_quantity_3()
    test_view_book_quantity_4()
    test_view_book_quantity_5()
}