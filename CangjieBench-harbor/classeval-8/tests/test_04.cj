func test_all() {
    let account1 = BankAccount()
    let account2 = BankAccount()
    account1.deposit(1000)
    account1.withdraw(200)
    account1.transfer(account2, 300)
    if (account1.view_balance() != 500) {
        throw Exception("Test failed!")
    }
    if (account2.view_balance() != 300) {
        throw Exception("Test failed!")
    }
}

func test_all2() {
    let account1 = BankAccount()
    let account2 = BankAccount()
    account1.deposit(1000)
    account1.withdraw(200)
    account1.transfer(account2, 300)
    account2.withdraw(100)
    if (account1.view_balance() != 500) {
        throw Exception("Test failed!")
    }
    if (account2.view_balance() != 200) {
        throw Exception("Test failed!")
    }
}

main() {
    test_all()
    test_all2()
}
