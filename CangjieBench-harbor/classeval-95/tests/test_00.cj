import std.collection.HashMap

func test_add_product_1() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    let expected = HashMap<Int64, Product>()
    expected[1] = Product("product 1", 10)
    if (warehouse.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_product_2() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 1", 10)
    warehouse.add_product(2, "product 2", 5)
    let expected = HashMap<Int64, Product>()
    expected[1] = Product("product 1", 10)
    expected[2] = Product("product 2", 5)
    if (warehouse.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_product_3() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 3", 10)
    let expected = HashMap<Int64, Product>()
    expected[1] = Product("product 3", 10)
    if (warehouse.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_product_4() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 4", 10)
    let expected = HashMap<Int64, Product>()
    expected[1] = Product("product 4", 10)
    if (warehouse.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_product_5() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 5", 10)
    let expected = HashMap<Int64, Product>()
    expected[1] = Product("product 5", 10)
    if (warehouse.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_product_6() {
    let warehouse = Warehouse()
    warehouse.add_product(1, "product 5", 10)
    warehouse.add_product(1, "product 5", 10)
    let expected = HashMap<Int64, Product>()
    expected[1] = Product("product 5", 20)
    if (warehouse.inventory != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_product_1()
    test_add_product_2()
    test_add_product_3()
    test_add_product_4()
    test_add_product_5()
    test_add_product_6()
}
