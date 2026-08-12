import std.collection.HashMap

func test_add_book_1() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1")
    let expected = HashMap<String, Int64>()
    expected["book1"] = 1
    if (bookManagement.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_book_2() {
    let bookManagement = BookManagement()
    let expected = HashMap<String, Int64>()
    if (bookManagement.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_book_3() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1")
    bookManagement.add_book("book1", quantity: 2)
    let expected = HashMap<String, Int64>()
    expected["book1"] = 3
    if (bookManagement.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_book_4() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity: 2)
    let expected = HashMap<String, Int64>()
    expected["book1"] = 2
    if (bookManagement.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_book_5() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity: 2)
    bookManagement.add_book("book1")
    let expected = HashMap<String, Int64>()
    expected["book1"] = 3
    if (bookManagement.inventory != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_book_1()
    test_add_book_2()
    test_add_book_3()
    test_add_book_4()
    test_add_book_5()
}
