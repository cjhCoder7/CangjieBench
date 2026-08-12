import std.collection.HashMap
import std.collection.ArrayList

func test_main() {
    let vendingMachine = VendingMachine()
    if (vendingMachine.display_items() != None) {
        throw Exception("Test failed!")
    }
    vendingMachine.add_item("Coke", 1.25, 10)
    let expected_inventory1 = HashMap<String, Product>()
    expected_inventory1["Coke"] = Product(1.25, 10)
    if (vendingMachine.inventory != expected_inventory1) {
        throw Exception("Test failed!")
    }
    if (vendingMachine.insert_coin(1.25) != 1.25) {
        throw Exception("Test failed!")
    }
    if (vendingMachine.purchase_item("Coke") != 0.0) {
        throw Exception("Test failed!")
    }
    let expected_inventory2 = HashMap<String, Product>()
    expected_inventory2["Coke"] = Product(1.25, 9)
    if (vendingMachine.inventory != expected_inventory2) {
        throw Exception("Test failed!")
    }
    if (vendingMachine.purchase_item("Pizza") != None) {
        throw Exception("Test failed!")
    }
    if (vendingMachine.restock_item("Coke", 10) != true) {
        throw Exception("Test failed!")
    }
    let expected_inventory3 = HashMap<String, Product>()
    expected_inventory3["Coke"] = Product(1.25, 19)
    if (vendingMachine.inventory != expected_inventory3) {
        throw Exception("Test failed!")
    }
    if (vendingMachine.restock_item("Pizza", 10) != false) {
        throw Exception("Test failed!")
    }
    if ((vendingMachine.display_items() ?? "") != "Coke - $1.250000 [19]") {
        throw Exception("Test failed!")
    }
}

func test_main_2() {
    let vendingMachine = VendingMachine()
    if (vendingMachine.purchase_item("Coke") != None) {
        throw Exception("Test failed!")
    }
    vendingMachine.add_item("Coke", 1.25, 10)
    let expected_inventory1 = HashMap<String, Product>()
    expected_inventory1["Coke"] = Product(1.25, 10)
    if (vendingMachine.inventory != expected_inventory1) {
        throw Exception("Test failed!")
    }
    if (vendingMachine.restock_item("Pizza", 10) != false) {
        throw Exception("Test failed!")
    }
    if (vendingMachine.inventory != expected_inventory1) {
        throw Exception("Test failed!")
    }
    if (vendingMachine.insert_coin(1.25) != 1.25) {
        throw Exception("Test failed!")
    }
    if (vendingMachine.purchase_item("Coke") != 0.0) {
        throw Exception("Test failed!")
    }
    let expected_inventory2 = HashMap<String, Product>()
    expected_inventory2["Coke"] = Product(1.25, 9)
    if (vendingMachine.inventory != expected_inventory2) {
        throw Exception("Test failed!")
    }
    if ((vendingMachine.display_items() ?? "") != "Coke - $1.250000 [9]") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
    test_main_2()
}
