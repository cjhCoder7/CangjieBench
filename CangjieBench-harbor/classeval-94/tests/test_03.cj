import std.collection.HashMap
import std.collection.ArrayList

func test_restock_item() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 10)
    let result = vendingMachine.restock_item("Coke", 10)
    if (result != true) {
        throw Exception("Test failed!")
    }
    let expected_inventory = HashMap<String, Product>()
    expected_inventory["Coke"] = Product(1.25, 20)
    if (vendingMachine.inventory != expected_inventory) {
        throw Exception("Test failed!")
    }
}

func test_restock_item_2() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 10)
    let result = vendingMachine.restock_item("Pizza", 10)
    if (result != false) {
        throw Exception("Test failed!")
    }
    let expected_inventory = HashMap<String, Product>()
    expected_inventory["Coke"] = Product(1.25, 10)
    if (vendingMachine.inventory != expected_inventory) {
        throw Exception("Test failed!")
    }
}

func test_restock_item_3() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 0)
    let result = vendingMachine.restock_item("Coke", 10)
    if (result != true) {
        throw Exception("Test failed!")
    }
    let expected_inventory = HashMap<String, Product>()
    expected_inventory["Coke"] = Product(1.25, 10)
    if (vendingMachine.inventory != expected_inventory) {
        throw Exception("Test failed!")
    }
}

func test_restock_item_4() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 10)
    vendingMachine.inventory["Pizza"] = Product(1.25, 10)
    let result = vendingMachine.restock_item("Pizza", 10)
    if (result != true) {
        throw Exception("Test failed!")
    }
    let expected_inventory = HashMap<String, Product>()
    expected_inventory["Coke"] = Product(1.25, 10)
    expected_inventory["Pizza"] = Product(1.25, 20)
    if (vendingMachine.inventory != expected_inventory) {
        throw Exception("Test failed!")
    }
}

func test_restock_item_5() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 10)
    vendingMachine.inventory["Pizza"] = Product(1.25, 10)
    let result = vendingMachine.restock_item("Pizza", 0)
    if (result != true) {
        throw Exception("Test failed!")
    }
    let expected_inventory = HashMap<String, Product>()
    expected_inventory["Coke"] = Product(1.25, 10)
    expected_inventory["Pizza"] = Product(1.25, 10)
    if (vendingMachine.inventory != expected_inventory) {
        throw Exception("Test failed!")
    }
}

main() {
    test_restock_item()
    test_restock_item_2()
    test_restock_item_3()
    test_restock_item_4()
    test_restock_item_5()
}
