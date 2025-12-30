func test_add_item() {
    let vendingMachine = VendingMachine()
    vendingMachine.add_item("Coke", 1.25, 10)
    let expected = HashMap<String, Product>()
    expected["Coke"] = Product(1.25, 10)
    if (vendingMachine.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_item_2() {
    let vendingMachine = VendingMachine()
    vendingMachine.add_item("Coke", 1.25, 10)
    vendingMachine.add_item("Coke", 1.25, 10)
    let expected = HashMap<String, Product>()
    expected["Coke"] = Product(1.25, 20)
    if (vendingMachine.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_item_3() {
    let vendingMachine = VendingMachine()
    vendingMachine.add_item("Coke", 1.25, 10)
    vendingMachine.add_item("Pizza", 1.25, 10)
    let expected = HashMap<String, Product>()
    expected["Coke"] = Product(1.25, 10)
    expected["Pizza"] = Product(1.25, 10)
    if (vendingMachine.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_item_4() {
    let vendingMachine = VendingMachine()
    vendingMachine.add_item("Coke", 1.25, 10)
    vendingMachine.add_item("Pizza", 1.25, 10)
    vendingMachine.add_item("Pizza", 1.25, 10)
    let expected = HashMap<String, Product>()
    expected["Coke"] = Product(1.25, 10)
    expected["Pizza"] = Product(1.25, 20)
    if (vendingMachine.inventory != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_item_5() {
    let vendingMachine = VendingMachine()
    vendingMachine.add_item("Coke", 1.25, 10)
    vendingMachine.add_item("Pizza", 1.25, 10)
    vendingMachine.add_item("Pizza", 1.25, 10)
    vendingMachine.add_item("Coke", 1.25, 10)
    let expected = HashMap<String, Product>()
    expected["Coke"] = Product(1.25, 20)
    expected["Pizza"] = Product(1.25, 20)
    if (vendingMachine.inventory != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_item()
    test_add_item_2()
    test_add_item_3()
    test_add_item_4()
    test_add_item_5()
}