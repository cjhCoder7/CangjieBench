func test_view_balance() {
    let account1 = BankAccount()
    if (account1.view_balance() != 0) {
        throw Exception("Test failed!")
    }
}

func test_view_balance_2() {
    let account1 = BankAccount()
    account1.balance = 1000
    if (account1.view_balance() != 1000) {
        throw Exception("Test failed!")
    }
}

func test_view_balance_3() {
    let account1 = BankAccount()
    account1.balance = 500
    if (account1.view_balance() != 500) {
        throw Exception("Test failed!")
    }
}

func test_view_balance_4() {
    let account1 = BankAccount()
    account1.balance = 1500
    if (account1.view_balance() != 1500) {
        throw Exception("Test failed!")
    }
}

func test_view_balance_5() {
    let account1 = BankAccount()
    account1.balance = 2000
    if (account1.view_balance() != 2000) {
        throw Exception("Test failed!")
    }
}

main() {
    test_view_balance()
    test_view_balance_2()
    test_view_balance_3()
    test_view_balance_4()
    test_view_balance_5()
}
