class BankAccount {

    /*
    This is a class as a bank account system, which supports deposit money, withdraw money, view balance, and transfer money.
    */

    var balance: Int64

    public init(balance!: Int64 = 0) {
        /*
        Initializes a bank account object with an attribute balance, default value is 0.
        */
        this.balance = balance
    }

    public func deposit(amount: Int64): Int64 {
        /*
        Deposits a certain amount into the account, increasing the account balance, return the current account balance.
        If amount is negative, throw Exception("Invalid amount").
        :param amount: Int64
        */
        
    }

    public func withdraw(amount: Int64): Int64 {
        /*
        Withdraws a certain amount from the account, decreasing the account balance, return the current account balance.
        If amount is negative, throw Exception("Invalid amount").
        If the withdrawal amount is greater than the account balance, throw Exception("Insufficient balance.").
        :param amount: Int64
        */
        
    }

    public func view_balance(): Int64 {
        /*
        Return the account balance.
        */
        
    }

    public func transfer(other_account: BankAccount, amount: Int64): Unit {
        /*
        Transfers a certain amount from the current account to another account.
        :param other_account: BankAccount
        :param amount: Int64
        >>> account1 = BankAccount()
        >>> account2 = BankAccount()
        >>> account1.deposit(1000)
        >>> account1.transfer(account2, 300)
        account1.balance = 700 account2.balance = 300
        */
        
    }
}
