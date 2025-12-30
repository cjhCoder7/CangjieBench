func test_main() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    let expected_inventory1 = HashMap<Int64, Product>()
    expected_inventory1[1] = Product("product 1", 10)
    if (warehouse.inventory != expected_inventory1) {
        throw Exception("Test failed!")
    }

    warehouse.update_product_quantity(1, -5)
    let expected_inventory2 = HashMap<Int64, Product>()
    expected_inventory2[1] = Product("product 1", 5)
    if (warehouse.inventory != expected_inventory2) {
        throw Exception("Test failed!")
    }

    if (warehouse.get_product_quantity(1) != 5) {
        throw Exception("Test failed!")
    }

    warehouse.create_order(1, 1, 3)
    let expected_orders1 = HashMap<Int64, Order>()
    expected_orders1[1] = Order(1, 3, "Shipped")
    if (warehouse.orders != expected_orders1) {
        throw Exception("Test failed!")
    }

    warehouse.change_order_status(1, "Delivered")
    let expected_orders2 = HashMap<Int64, Order>()
    expected_orders2[1] = Order(1, 3, "Delivered")
    if (warehouse.orders != expected_orders2) {
        throw Exception("Test failed!")
    }

    if (warehouse.track_order(1) != "Delivered") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}