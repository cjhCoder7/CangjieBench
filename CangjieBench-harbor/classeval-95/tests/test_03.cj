import std.collection.HashMap

func test_create_order_1() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    warehouse.create_order(1, 1, 5)
    let expected = HashMap<Int64, Order>()
    expected[1] = Order(1, 5, "Shipped")
    if (warehouse.orders != expected) {
        throw Exception("Test failed!")
    }
}

func test_create_order_2() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    let result = warehouse.create_order(1, 1, 15)
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_create_order_3() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 1)
    warehouse.create_order(1, 1, 1)
    let expected = HashMap<Int64, Order>()
    expected[1] = Order(1, 1, "Shipped")
    if (warehouse.orders != expected) {
        throw Exception("Test failed!")
    }
}

func test_create_order_4() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 4", 5)
    warehouse.create_order(1, 1, 5)
    let expected = HashMap<Int64, Order>()
    expected[1] = Order(1, 5, "Shipped")
    if (warehouse.orders != expected) {
        throw Exception("Test failed!")
    }
}

func test_create_order_5() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 5", 100)
    warehouse.create_order(1, 1, 50)
    let expected = HashMap<Int64, Order>()
    expected[1] = Order(1, 50, "Shipped")
    if (warehouse.orders != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_create_order_1()
    test_create_order_2()
    test_create_order_3()
    test_create_order_4()
    test_create_order_5()
}
