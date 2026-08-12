import std.collection.HashMap
import std.math.abs

func test_shoppingcart() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    let expected1 = HashMap<String, Item>()
    expected1.add("apple", Item(1.0, 5))
    if (shoppingcart.items != expected1) {
        throw Exception("Test failed!")
    }
    let expected2 = HashMap<String, Item>()
    expected2.add("apple", Item(1.0, 5))
    if (shoppingcart.view_items() != expected2) {
        throw Exception("Test failed!")
    }
    shoppingcart.remove_item("apple", quantity: 3)
    let expected3 = HashMap<String, Item>()
    expected3.add("apple", Item(1.0, 2))
    if (shoppingcart.items != expected3) {
        throw Exception("Test failed!")
    }
    shoppingcart.add_item("banana", 2.0, quantity: 3)
    if (abs(shoppingcart.total_price() - 8.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_shoppingcart()
}
