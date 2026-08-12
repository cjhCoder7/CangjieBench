import std.collection.ArrayList
import std.math.abs

func test_bulk_item_promo_1() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 20, 10.0))
    cart.add(Product('product2', 5, 5.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.BulkItemPromo)
    let expected_discount = 20.0
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }
}

func test_bulk_item_promo_2() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 10.0))
    cart.add(Product('product2', 5, 5.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.BulkItemPromo)
    let expected_discount = 0.0
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }
}

func test_bulk_item_promo_3() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 100, 10.0))
    cart.add(Product('product2', 5, 5.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.BulkItemPromo)
    let expected_discount = 100.0
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }
}

func test_bulk_item_promo_4() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 1, 10.0))
    cart.add(Product('product2', 5, 5.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.BulkItemPromo)
    let expected_discount = 0.0
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }
}

func test_bulk_item_promo_5() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 30, 10.0))
    cart.add(Product('product2', 5, 5.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.BulkItemPromo)
    let expected_discount = 30.0
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }
}

main() {
    test_bulk_item_promo_1()
    test_bulk_item_promo_2()
    test_bulk_item_promo_3()
    test_bulk_item_promo_4()
    test_bulk_item_promo_5()
}
