func test_remove_item_1() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    shoppingcart.remove_item("apple", quantity: 3)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 2))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_item_2() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    shoppingcart.remove_item("apple")
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 4))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_item_3() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    shoppingcart.remove_item("apple", quantity: 1)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 4))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_item_4() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    shoppingcart.remove_item("apple", quantity: 2)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 3))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_item_5() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    shoppingcart.remove_item("apple", quantity: 4)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 1))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_item_6() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    shoppingcart.remove_item("banana", quantity: 4)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 5))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_remove_item_1()
    test_remove_item_2()
    test_remove_item_3()
    test_remove_item_4()
    test_remove_item_5()
    test_remove_item_6()
}