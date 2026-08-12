import std.collection.HashMap
import std.collection.ArrayList

class Product <: Equatable<Product> {

    let price: Float64
    var quantity: Int64

    public init(price: Float64, quantity: Int64) {
        this.price = price
        this.quantity = quantity
    }

    public override operator func != (that: Product): Bool {
        return this.price != that.price || this.quantity != that.quantity
    }

    public override operator func == (that: Product): Bool {
        return this.price == that.price && this.quantity == that.quantity
    }
}

class VendingMachine {

    /*
    This is a class to simulate a vending machine, including adding products, inserting coins, purchasing products, viewing balance, replenishing product inventory, and displaying product information.
    */

    var inventory: HashMap<String, Product>
    var balance: Float64

    public init() {
        /*
        Initializes the vending machine's inventory and balance.
        */
        this.inventory = HashMap<String, Product>()
        this.balance = 0.0
    }

    public func add_item(item_name: String, price: Float64, quantity: Int64): Unit {
        /*
        Adds a product to the vending machine's inventory.
        :param item_name: The name of the product to be added, String.
        :param price: The price of the product to be added, Float64.
        :param quantity: The quantity of the product to be added, Int64.
        :return: Unit
        >>> vendingMachine = VendingMachine()
        >>> vendingMachine.add_item('Coke', 1.25, 10)
        >>> vendingMachine.inventory
        {'Coke': Product(1.25, 10)}

        */
        
    }

    public func insert_coin(amount: Float64): Float64 {
        /*
        Inserts coins into the vending machine.
        :param amount: The amount of coins to be inserted, Float64.
        :return: The balance of the vending machine after the coins are inserted, Float64.
        >>> vendingMachine = VendingMachine()
        >>> vendingMachine.insert_coin(1.25)
        1.25

        */
        
    }

    public func purchase_item(item_name: String): Option<Float64> {
        /*
        Purchases a product from the vending machine and returns the balance after the purchase and display purchase unsuccessful if the product is out of stock.
        :param item_name: The name of the product to be purchased, String.
        :return: If successful, returns the balance of the vending machine after the product is purchased, Float64,otherwise,returns None.
        >>> vendingMachine = VendingMachine()
        >>> vendingMachine.inventory = HashMap<String, Product>([('Coke', Product(1.25, 10))])
        >>> vendingMachine.balance = 1.25
        >>> vendingMachine.purchase_item('Coke')
        0.0
        >>> vendingMachine.purchase_item('Pizza')
        None

        */
        
    }

    public func restock_item(item_name: String, quantity: Int64): Bool {
        /*
        Replenishes the inventory of a product already in the vending machine.
        :param item_name: The name of the product to be replenished, String.
        :param quantity: The quantity of the product to be replenished, Int64.
        :return: If the product is already in the vending machine, returns true, otherwise, returns false.
        >>> vendingMachine = VendingMachine()
        >>> vendingMachine.inventory = HashMap<String, Product>([('Coke', Product(1.25, 10))])
        >>> vendingMachine.restock_item('Coke', 10)
        true
        >>> vendingMachine.restock_item('Pizza', 10)
        false

        */
        
    }

    public func display_items(): Option<String> {
        /*
        Displays the products in the vending machine.
        :return: If the vending machine is empty, returns None, otherwise, returns a list of the products in the vending machine, String.
        >>> vendingMachine = VendingMachine()
        >>> vendingMachine.display_items()
        None
        >>> vendingMachine.inventory = HashMap<String, Product>([('Coke', Product(1.25, 10))])
        >>> vendingMachine.display_items()
        'Coke - $1.250000 [10]'

        */
        
    }
}

