func test_view_items_1() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 5))
    if (shoppingcart.view_items() != expected) {
        throw Exception("Test failed!")
    }
}

func test_view_items_2() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 4)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 4))
    if (shoppingcart.view_items() != expected) {
        throw Exception("Test failed!")
    }
}

func test_view_items_3() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 3)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 3))
    if (shoppingcart.view_items() != expected) {
        throw Exception("Test failed!")
    }
}

func test_view_items_4() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 2)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 2))
    if (shoppingcart.view_items() != expected) {
        throw Exception("Test failed!")
    }
}

func test_view_items_5() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 1)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 1))
    if (shoppingcart.view_items() != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_view_items_1()
    test_view_items_2()
    test_view_items_3()
    test_view_items_4()
    test_view_items_5()
}