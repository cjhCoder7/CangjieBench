import std.collection.HashMap
import std.math.abs

func test_add_item_1() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 5))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_item_2() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 1))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_item_3() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("aaa", 1.0)
    let expected = HashMap<String, Item>()
    expected.add("aaa", Item(1.0, 1))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_item_4() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("bbb", 1.0)
    let expected = HashMap<String, Item>()
    expected.add("bbb", Item(1.0, 1))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_item_5() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("ccc", 1.0)
    let expected = HashMap<String, Item>()
    expected.add("ccc", Item(1.0, 1))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_item_6() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    let expected = HashMap<String, Item>()
    expected.add("apple", Item(1.0, 5))
    if (shoppingcart.items != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_item_1()
    test_add_item_2()
    test_add_item_3()
    test_add_item_4()
    test_add_item_5()
    test_add_item_6()
}
