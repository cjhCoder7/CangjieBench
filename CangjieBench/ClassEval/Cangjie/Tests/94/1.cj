func test_insert_coin() {
    let vendingMachine = VendingMachine()
    if (vendingMachine.insert_coin(1.25) != 1.25) {
        throw Exception("Test failed!")
    }
}

func test_insert_coin_2() {
    let vendingMachine = VendingMachine()
    if (vendingMachine.insert_coin(2.5) != 2.5) {
        throw Exception("Test failed!")
    }
}

func test_insert_coin_3() {
    let vendingMachine = VendingMachine()
    vendingMachine.insert_coin(1.25)
    vendingMachine.insert_coin(1.25)
    if (vendingMachine.balance != 2.50) {
        throw Exception("Test failed!")
    }
}

func test_insert_coin_4() {
    let vendingMachine = VendingMachine()
    vendingMachine.balance = 1.25
    vendingMachine.insert_coin(1.25)
    vendingMachine.insert_coin(1.25)
    vendingMachine.insert_coin(1.25)
    if (vendingMachine.balance != 5.0) {
        throw Exception("Test failed!")
    }
}

func test_insert_coin_5() {
    let vendingMachine = VendingMachine()
    vendingMachine.balance = 1.25
    vendingMachine.insert_coin(1.25)
    vendingMachine.insert_coin(1.25)
    vendingMachine.insert_coin(1.25)
    vendingMachine.insert_coin(1.25)
    if (vendingMachine.balance != 6.25) {
        throw Exception("Test failed!")
    }
}

main() {
    test_insert_coin()
    test_insert_coin_2()
    test_insert_coin_3()
    test_insert_coin_4()
    test_insert_coin_5()
}