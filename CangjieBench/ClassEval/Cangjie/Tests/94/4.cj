func test_display_items() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 10)
    let result = vendingMachine.display_items() ?? ""
    if (result != "Coke - $1.250000 [10]") {
        print(result)
        throw Exception("Test failed!")
    }
}

func test_display_items_2() {
    let vendingMachine = VendingMachine()
    let result = vendingMachine.display_items()
    if (result != None) {
        throw Exception("Test failed!")
    }
}

func test_display_items_3() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 10)
    vendingMachine.inventory["Pizza"] = Product(1.25, 10)
    let result = vendingMachine.display_items() ?? ""
    if (result != "Coke - $1.250000 [10]\nPizza - $1.250000 [10]") {
        throw Exception("Test failed!")
    }
}

func test_display_items_4() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 0)
    let result = vendingMachine.display_items() ?? ""
    if (result != "Coke - $1.250000 [0]") {
        throw Exception("Test failed!")
    }
}

func test_display_items_5() {
    let vendingMachine = VendingMachine()
    vendingMachine.inventory = HashMap<String, Product>()
    vendingMachine.inventory["Coke"] = Product(1.25, 0)
    vendingMachine.inventory["Pizza"] = Product(1.25, 10)
    let result = vendingMachine.display_items() ?? ""
    if (result != "Coke - $1.250000 [0]\nPizza - $1.250000 [10]") {
        throw Exception("Test failed!")
    }
}

main() {
    test_display_items()
    test_display_items_2()
    test_display_items_3()
    test_display_items_4()
    test_display_items_5()
}