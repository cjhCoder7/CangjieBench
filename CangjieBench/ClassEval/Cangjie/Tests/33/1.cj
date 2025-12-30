func test_due_1() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart)
    let expected_due = 250.0
    let actual_due = order.due()
    if (expected_due != actual_due) {
        throw Exception('Test failed!')
    }
}

func test_due_2() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.FidelityPromo)
    let expected_due = 237.5
    let actual_due = order.due()
    if (expected_due != actual_due) {
        throw Exception('Test failed!')
    }
}

func test_due_3() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 20, 20.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.BulkItemPromo)
    let expected_due = 410.0
    let actual_due = order.due()
    if (expected_due != actual_due) {
        throw Exception('Test failed!')
    }
}

func test_due_4() {
    let customer = Customer('John Doe', 1200)
    let cart = ArrayList<Product>()
    for (i in 0..15) {
        cart.add(Product('product' + i.toString(), 1, 10.0))
    }
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.LargeOrderPromo)
    let expected_due = 139.5
    let actual_due = order.due()
    if (expected_due != actual_due) {
        throw Exception('Test failed!')
    }
}

func test_due_5() {
    let customer = Customer('John Doe', 900)
    let cart = ArrayList<Product>()
    cart.add(Product('product1', 10, 20.0))
    cart.add(Product('product2', 5, 10.0))
    let order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.FidelityPromo)
    let expected_due = 250.0
    let actual_due = order.due()
    if (expected_due != actual_due) {
        throw Exception('Test failed!')
    }
}

main() {
    test_due_1()
    test_due_2()
    test_due_3()
    test_due_4()
    test_due_5()
}