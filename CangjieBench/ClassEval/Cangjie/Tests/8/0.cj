func test_deposit() {
    let account1 = BankAccount()
    let ret = account1.deposit(1000)
    if (ret != 1000) {
        throw Exception("Test failed!")
    }
}

func test_deposit_2() {
    let account1 = BankAccount()
    account1.deposit(1000)
    let ret = account1.deposit(2000)
    if (ret != 3000) {
        throw Exception("Test failed!")
    }
}

func test_deposit_3() {
    let account1 = BankAccount()
    try {
        account1.deposit(-1000)
        throw Exception("Test failed!")
    } catch (e: Exception) {
        if (e.message != "Invalid amount") {
            throw Exception("Test failed!")
        }
    }
}

func test_deposit_4() {
    let account1 = BankAccount()
    let ret = account1.deposit(0)
    if (ret != 0) {
        throw Exception("Test failed!")
    }
}

func test_deposit_5() {
    let account1 = BankAccount()
    account1.deposit(1000)
    let ret = account1.deposit(1000)
    if (ret != 2000) {
        throw Exception("Test failed!")
    }
}

main() {
    test_deposit()
    test_deposit_2()
    test_deposit_3()
    test_deposit_4()
    test_deposit_5()
}