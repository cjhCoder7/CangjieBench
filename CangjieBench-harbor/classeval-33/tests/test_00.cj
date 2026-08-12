import std.collection.ArrayList
import std.math.abs

func test_total_1() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart)
    let expected_total = 250.0
    let actual_total = order.total()
    if (expected_total != actual_total) {
        throw Exception('Test failed!')
    }
}

func test_total_2() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 10.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart)
    let expected_total = 150.0
    let actual_total = order.total()
    if (expected_total != actual_total) {
        throw Exception('Test failed!')
    }
}

func test_total_3() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 200.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart)
    let expected_total = 2050.0
    let actual_total = order.total()
    if (expected_total != actual_total) {
        throw Exception('Test failed!')
    }
}

func test_total_4() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 1, 20.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart)
    let expected_total = 70.0
    let actual_total = order.total()
    if (expected_total != actual_total) {
        throw Exception('Test failed!')
    }
}

func test_total_5() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    let order = DiscountStrategy(customer, cart)
    let expected_total = 0.0
    let actual_total = order.total()
    if (expected_total != actual_total) {
        throw Exception('Test failed!')
    }
}

main() {
    test_total_1()
    test_total_2()
    test_total_3()
    test_total_4()
    test_total_5()
}
