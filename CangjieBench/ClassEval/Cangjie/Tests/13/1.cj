func test_remove_book_1() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity:2)
    bookManagement.add_book("book2")
    bookManagement.remove_book("book1", 2)
    let expected = HashMap<String, Int64>()
    expected["book2"] = 1
    if (bookManagement.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_book_2() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity:2)
    bookManagement.add_book("book2")
    bookManagement.remove_book("book1", 1)
    let expected = HashMap<String, Int64>()
    expected["book1"] = 1
    expected["book2"] = 1
    if (bookManagement.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_book_3() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity:2)
    bookManagement.add_book("book2")
    try {
        bookManagement.remove_book("book3", 1)
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "Invalid operation") {
            throw Exception("Test failed!")
        }
    }
}

func test_remove_book_4() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity:2)
    bookManagement.add_book("book2")
    try {
        bookManagement.remove_book("book2", 2)
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "Invalid operation") {
            throw Exception("Test failed!")
        }
    }
}

func test_remove_book_5() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity:2)
    bookManagement.add_book("book2")
    try {
        bookManagement.remove_book("book2", 5)
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "Invalid operation") {
            throw Exception("Test failed!")
        }
    }
}

main() {
    test_remove_book_1()
    test_remove_book_2()
    test_remove_book_3()
    test_remove_book_4()
    test_remove_book_5()
}