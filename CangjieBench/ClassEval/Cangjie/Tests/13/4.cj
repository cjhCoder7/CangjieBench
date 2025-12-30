func test_main() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity: 2)
    bookManagement.add_book("book2")
    let expected = HashMap<String, Int64>()
    expected["book1"] = 2
    expected["book2"] = 1
    if (bookManagement.view_inventory() != expected) {
        throw Exception("Test failed!")
    }

    bookManagement.remove_book("book2", 1)
    let expected2 = HashMap<String, Int64>()
    expected2["book1"] = 2
    if (bookManagement.view_inventory() != expected2) {
        throw Exception("Test failed!")
    }
    if (0 != bookManagement.view_book_quantity("book2")) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}