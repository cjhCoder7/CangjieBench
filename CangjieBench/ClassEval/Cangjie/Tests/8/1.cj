func test_withdraw() {
    let account1 = BankAccount()
    account1.balance = 1000
    let ret = account1.withdraw(200)
    if (ret != 800) {
        throw Exception("Test failed!")
    }
}

func test_withdraw_2() {
    let account1 = BankAccount()
    account1.balance = 500
    try {
        account1.withdraw(1000)
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "Insufficient balance.") {
            throw Exception("Test failed!")
        }
    }
}

func test_withdraw_3() {
    let account1 = BankAccount()
    try {
        account1.withdraw(-1000)
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "Invalid amount") {
            throw Exception("Test failed!")
        }
    }
}

func test_withdraw_4() {
    let account1 = BankAccount()
    account1.balance = 1000
    let ret = account1.withdraw(500)
    if (ret != 500) {
        throw Exception("Test failed!")
    }
}

func test_withdraw_5() {
    let account1 = BankAccount()
    account1.balance = 1000
    let ret = account1.withdraw(1000)
    if (ret != 0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_withdraw()
    test_withdraw_2()
    test_withdraw_3()
    test_withdraw_4()
    test_withdraw_5()
}