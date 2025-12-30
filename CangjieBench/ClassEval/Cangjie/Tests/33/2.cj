func test_fidelity_promo_1() {
    let customer = Customer('John Doe', 1000)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.FidelityPromo)
    let expected_discount = 12.5
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }
}

func test_fidelity_promo_2() {
    let customer = Customer('John Doe', 800)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.FidelityPromo)
    let expected_discount = 0.0
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }
}

func test_fidelity_promo_3() {
    let customer = Customer('John Doe', 0)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.FidelityPromo)
    let expected_discount = 0.0
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }
}

func test_fidelity_promo_4() {
    let customer = Customer('John Doe', 10000)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.FidelityPromo)
    let expected_discount = 12.5
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }
}

func test_fidelity_promo_5() {
    let customer = Customer('John Doe', 1800)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.FidelityPromo)
    let expected_discount = 12.5
    let actual_discount = order.promotion(order)
    if (expected_discount != actual_discount) {
        throw Exception('Test failed!')
    }
}

main() {
    test_fidelity_promo_1()
    test_fidelity_promo_2()
    test_fidelity_promo_3()
    test_fidelity_promo_4()
    test_fidelity_promo_5()
}