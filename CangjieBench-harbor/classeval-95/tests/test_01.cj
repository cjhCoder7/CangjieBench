import std.collection.HashMap

func test_update_product_quantity_1() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    warehouse.update_product_quantity(1, 5)
    let expected = HashMap<Int64, Product>()
    expected[1] = Product("product 1", 15)
    if (warehouse.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_update_product_quantity_2() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    warehouse.update_product_quantity(1, -5)
    let expected = HashMap<Int64, Product>()
    expected[1] = Product("product 1", 5)
    if (warehouse.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_update_product_quantity_3() {
    let warehouse = Warehouse()
    warehouse.update_product_quantity(1, -5)
    let expected = HashMap<Int64, Product>()
    if (warehouse.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_update_product_quantity_4() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    warehouse.update_product_quantity(1, 1)
    let expected = HashMap<Int64, Product>()
    expected[1] = Product("product 1", 11)
    if (warehouse.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_update_product_quantity_5() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    warehouse.update_product_quantity(1, -9)
    let expected = HashMap<Int64, Product>()
    expected[1] = Product("product 1", 1)
    if (warehouse.inventory != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_update_product_quantity_1()
    test_update_product_quantity_2()
    test_update_product_quantity_3()
    test_update_product_quantity_4()
    test_update_product_quantity_5()
}
