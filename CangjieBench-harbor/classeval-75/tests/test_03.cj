import std.collection.HashMap
import std.math.abs

func test_total_price_1() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    shoppingcart.add_item("banana", 2.0, quantity: 3)
    if (abs(shoppingcart.total_price() - 11.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_total_price_2() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 5)
    shoppingcart.add_item("banana", 2.0, quantity: 3)
    shoppingcart.remove_item("apple", quantity: 3)
    if (abs(shoppingcart.total_price() - 8.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_total_price_3() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 1)
    shoppingcart.add_item("banana", 2.0, quantity: 1)
    if (abs(shoppingcart.total_price() - 3.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_total_price_4() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 2)
    shoppingcart.add_item("banana", 2.0, quantity: 1)
    if (abs(shoppingcart.total_price() - 4.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_total_price_5() {
    let shoppingcart = ShoppingCart()
    shoppingcart.add_item("apple", 1.0, quantity: 3)
    shoppingcart.add_item("banana", 2.0, quantity: 1)
    if (abs(shoppingcart.total_price() - 5.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_total_price_1()
    test_total_price_2()
    test_total_price_3()
    test_total_price_4()
    test_total_price_5()
}
