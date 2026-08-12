import std.collection.ArrayList
import std.math.abs

func test_DiscountStrategy() {
    var customer = Customer('John Doe', 1200)
    var cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    var order = DiscountStrategy(customer, cart)
    let expected_total = 250.0
    let actual_total = order.total()
    if (expected_total != actual_total) {
        throw Exception('Test failed!')
    }

    customer = Customer('John Doe', 1200)
    cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    order = DiscountStrategy(customer, cart)
    let expected_due = 250.0
    let actual_due = order.due()
    if (expected_due != actual_due) {
        throw Exception('Test failed!')
    }

    customer = Customer('John Doe', 1000)
    cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.FidelityPromo)
    let expected_discount = 12.5
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }

    customer = Customer('John Doe', 1200)
    cart = ArrayList<Product>()
    cart.add(Product('product1', 20, 10.0))
    cart.add(Product('product2', 5, 5.0))
    order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.BulkItemPromo)
    let expected_discount2 = 20.0
    let actual_discount2 = order.promotion(order)
    if (expected_discount2 != actual_discount2) {
        throw Exception('Test failed!')
    }

    customer = Customer('John Doe', 1200)
    cart = ArrayList<Product>()
    for (i in 0..10) {
        cart.add(Product('product' + i.toString(), 1, 10.0))
    }
    order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.LargeOrderPromo)
    let expected_discount3 = 7.0
    let actual_discount3 = order.promotion(order)
    if (abs(actual_discount3 - expected_discount3) > 0.01) {
        throw Exception('Test failed!')
    }
}

main() {
    test_DiscountStrategy()
}
