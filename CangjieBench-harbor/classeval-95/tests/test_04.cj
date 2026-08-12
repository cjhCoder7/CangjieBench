import std.collection.HashMap

func test_change_order_status_1() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    warehouse.create_order(1, 1, 5)
    warehouse.change_order_status(1, "Delivered")
    let expected = HashMap<Int64, Order>()
    expected[1] = Order(1, 5, "Delivered")
    if (warehouse.orders != expected) {
        throw Exception("Test failed!")
    }
}

func test_change_order_status_2() {
    let warehouse = Warehouse()
    let result = warehouse.change_order_status(1, "Delivered")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_change_order_status_3() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 3", 5)
    warehouse.create_order(1, 1, 5)
    warehouse.change_order_status(1, "Delivered")
    let expected = HashMap<Int64, Order>()
    expected[1] = Order(1, 5, "Delivered")
    if (warehouse.orders != expected) {
        throw Exception("Test failed!")
    }
}

func test_change_order_status_4() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 4", 100)
    warehouse.create_order(1, 1, 50)
    warehouse.change_order_status(1, "Delivered")
    let expected = HashMap<Int64, Order>()
    expected[1] = Order(1, 50, "Delivered")
    if (warehouse.orders != expected) {
        throw Exception("Test failed!")
    }
}

func test_change_order_status_5() {
    let warehouse = Warehouse()
    let result = warehouse.change_order_status(2, "Delivered")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_change_order_status_1()
    test_change_order_status_2()
    test_change_order_status_3()
    test_change_order_status_4()
    test_change_order_status_5()
}
