func test_purchase_item() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 10)
    vendingMachine.balance = 1.25
    if (vendingMachine.purchase_item("Coke") != 0.0) {
        throw Exception("Test failed!")
    }
    let expected_inventory = HashMap<String, Product>()
    expected_inventory["Coke"] = Product(1.25, 9)
    if (vendingMachine.inventory != expected_inventory) {
        throw Exception("Test failed!")
    }
}

func test_purchase_item_2() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 10)
    vendingMachine.balance = 1.25
    if (vendingMachine.purchase_item("Pizza") != None) {
        throw Exception("Test failed!")
    }
    let expected_inventory = HashMap<String, Product>()
    expected_inventory["Coke"] = Product(1.25, 10)
    if (vendingMachine.inventory != expected_inventory) {
        throw Exception("Test failed!")
    }
}

func test_purchase_item_3() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 10)
    vendingMachine.balance = 0.0
    if (vendingMachine.purchase_item("Coke") != None) {
        throw Exception("Test failed!")
    }
    let expected_inventory = HashMap<String, Product>()
    expected_inventory["Coke"] = Product(1.25, 10)
    if (vendingMachine.inventory != expected_inventory) {
        throw Exception("Test failed!")
    }
}

func test_purchase_item_4() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 0)
    vendingMachine.balance = 1.25
    if (vendingMachine.purchase_item("Coke") != None) {
        throw Exception("Test failed!")
    }
    let expected_inventory = HashMap<String, Product>()
    expected_inventory["Coke"] = Product(1.25, 0)
    if (vendingMachine.inventory != expected_inventory) {
        throw Exception("Test failed!")
    }
}

func test_purchase_item_5() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 10)
    vendingMachine.inventory["Pizza"] = Product(1.25, 10)
    vendingMachine.balance = 1.25
    if (vendingMachine.purchase_item("Pizza") != 0.0) {
        throw Exception("Test failed!")
    }
    let expected_inventory = HashMap<String, Product>()
    expected_inventory["Coke"] = Product(1.25, 10)
    expected_inventory["Pizza"] = Product(1.25, 9)
    if (vendingMachine.inventory != expected_inventory) {
        throw Exception("Test failed!")
    }
}

main() {
    test_purchase_item()
    test_purchase_item_2()
    test_purchase_item_3()
    test_purchase_item_4()
    test_purchase_item_5()
}