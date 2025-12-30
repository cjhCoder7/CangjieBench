func test_get_product_quantity_1() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    if (warehouse.get_product_quantity(1) != 10) {
        throw Exception("Test failed!")
    }
}

func test_get_product_quantity_2() {
    let warehouse = Warehouse()
    if (warehouse.get_product_quantity(1) != None) {
        throw Exception("Test failed!")
    }
}

func test_get_product_quantity_3() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 5)
    if (warehouse.get_product_quantity(1) != 5) {
        throw Exception("Test failed!")
    }
}

func test_get_product_quantity_4() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 100)
    if (warehouse.get_product_quantity(1) != 100) {
        throw Exception("Test failed!")
    }
}

func test_get_product_quantity_5() {
    let warehouse = Warehouse()
    warehouse.add_product(5, "product 1", 10)
    if (warehouse.get_product_quantity(5) != 10) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_product_quantity_1()
    test_get_product_quantity_2()
    test_get_product_quantity_3()
    test_get_product_quantity_4()
    test_get_product_quantity_5()
}