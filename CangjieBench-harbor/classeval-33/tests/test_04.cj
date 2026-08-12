import std.collection.ArrayList
import std.math.abs

func test_large_order_promo_1() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    for (i in 0..10) {
        cart.add(Product('product' + i.toString(), 1, 10.0))
    }
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.LargeOrderPromo)
    let expected_discount = 7.0
    let actual_discount = order.promotion(order)
    if (abs(actual_discount - expected_discount) > 0.01) {
        throw Exception('Test failed!')
    }
}

func test_large_order_promo_2() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    for (i in 0..5) {
        cart.add(Product('product' + i.toString(), 1, 10.0))
    }
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.LargeOrderPromo)
    let expected_discount = 0.0
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }
}

func test_large_order_promo_3() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    for (i in 0..100) {
        cart.add(Product('product' + i.toString(), 1, 10.0))
    }
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.LargeOrderPromo)
    let expected_discount = 70.0
    let actual_discount = order.promotion(order)
    if (abs(actual_discount - expected_discount) > 0.01) {
        throw Exception('Test failed!')
    }
}

func test_large_order_promo_4() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    for (i in 0..1000) {
        cart.add(Product('product' + i.toString(), 1, 10.0))
    }
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.LargeOrderPromo)
    let expected_discount = 700.0
    let actual_discount = order.promotion(order)
    if (abs(actual_discount - expected_discount) > 0.01) {
        throw Exception('Test failed!')
    }
}

func test_large_order_promo_5() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    for (i in 0..1) {
        cart.add(Product('product' + i.toString(), 1, 10.0))
    }
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.LargeOrderPromo)
    let expected_discount = 0.0
    let actual_discount = order.promotion(order)
    if (abs(actual_discount - expected_discount) > 0.01) {
        throw Exception('Test failed!')
    }
}

main() {
    test_large_order_promo_1()
    test_large_order_promo_2()
    test_large_order_promo_3()
    test_large_order_promo_4()
    test_large_order_promo_5()
}
