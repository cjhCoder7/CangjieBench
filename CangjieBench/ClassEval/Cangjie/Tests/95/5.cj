func test_track_order_1() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    warehouse.create_order(1, 1, 5)
    let result = warehouse.track_order(1)
    if (result != "Shipped") {
        throw Exception("Test failed!")
    }
}

func test_track_order_2() {
    let warehouse = Warehouse()
    let result = warehouse.track_order(1)
    if (result != None) {
        throw Exception("Test failed!")
    }
}

func test_track_order_3() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 3", 10)
    warehouse.create_order(1, 1, 1)
    let result = warehouse.track_order(1)
    if (result != "Shipped") {
        throw Exception("Test failed!")
    }
}

func test_track_order_4() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 4", 100)
    warehouse.create_order(1, 1, 50)
    let result = warehouse.track_order(1)
    if (result != "Shipped") {
        throw Exception("Test failed!")
    }
}

func test_track_order_5() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 5", 100)
    warehouse.create_order(1, 1, 10)
    let result = warehouse.track_order(1)
    if (result != "Shipped") {
        throw Exception("Test failed!")
    }
}

main() {
    test_track_order_1()
    test_track_order_2()
    test_track_order_3()
    test_track_order_4()
    test_track_order_5()
}