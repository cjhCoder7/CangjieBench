func test_transfer() {
    let account1 = BankAccount()
    let account2 = BankAccount()
    account1.balance = 800
    account2.balance = 1000
    account1.transfer(account2, 300)
    if (account1.view_balance() != 500) {
        throw Exception("Test failed!")
    }
    if (account2.view_balance() != 1300) {
        throw Exception("Test failed!")
    }
}

func test_transfer_2() {
    let account1 = BankAccount()
    let account2 = BankAccount()
    account1.balance = 500
    try {
        account1.transfer(account2, 600)
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "Insufficient balance.") {
            throw Exception("Test failed!")
        }
    }
}

func test_transfer_3() {
    let account1 = BankAccount()
    let account2 = BankAccount()
    account1.balance = 500
    account2.balance = 1000
    try {
        account1.transfer(account2, -600)
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "Invalid amount") {
            throw Exception("Test failed!")
        }
    }
}

func test_transfer_4() {
    let account1 = BankAccount()
    let account2 = BankAccount()
    account1.balance = 500
    account2.balance = 1000
    account1.transfer(account2, 500)
    if (account1.view_balance() != 0) {
        throw Exception("Test failed!")
    }
    if (account2.view_balance() != 1500) {
        throw Exception("Test failed!")
    }
}

func test_transfer_5() {
    let account1 = BankAccount()
    let account2 = BankAccount()
    account1.balance = 500
    account2.balance = 1000
    account1.transfer(account2, 200)
    if (account1.view_balance() != 300) {
        throw Exception("Test failed!")
    }
    if (account2.view_balance() != 1200) {
        throw Exception("Test failed!")
    }
}

main() {
    test_transfer()
    test_transfer_2()
    test_transfer_3()
    test_transfer_4()
    test_transfer_5()
}