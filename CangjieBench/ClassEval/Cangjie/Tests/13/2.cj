func test_view_inventory_1() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity: 2)
    bookManagement.add_book("book2")
    let expected = HashMap<String, Int64>()
    expected["book1"] = 2
    expected["book2"] = 1
    if (expected != bookManagement.inventory) {
        throw Exception("Test failed!")
    }
}

func test_view_inventory_2() {
    let bookManagement = BookManagement()
    let expected = HashMap<String, Int64>()
    if (expected != bookManagement.inventory) {
        throw Exception("Test failed!")
    }
}

func test_view_inventory_3() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity: 2)
    bookManagement.add_book("book2")
    let expected = HashMap<String, Int64>()
    expected["book1"] = 2
    expected["book2"] = 1
    if (expected != bookManagement.inventory) {
        throw Exception("Test failed!")
    }
}

func test_view_inventory_4() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity: 2)
    bookManagement.add_book("book2")
    bookManagement.remove_book("book1", 2)
    let expected = HashMap<String, Int64>()
    expected["book2"] = 1
    if (expected != bookManagement.inventory) {
        throw Exception("Test failed!")
    }
}

func test_view_inventory_5() {
    let bookManagement = BookManagement()
    bookManagement.add_book("book1", quantity: 2)
    bookManagement.add_book("book2", quantity: 1)
    bookManagement.remove_book("book1", 2)
    bookManagement.remove_book("book2", 1)
    let expected = HashMap<String, Int64>()
    if (expected != bookManagement.inventory) {
        throw Exception("Test failed!")
    }
}

main() {
    test_view_inventory_1()
    test_view_inventory_2()
    test_view_inventory_3()
    test_view_inventory_4()
    test_view_inventory_5()
}