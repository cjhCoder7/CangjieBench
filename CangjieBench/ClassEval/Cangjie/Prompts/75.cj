import std.collection.HashMap
import std.math.abs

class Item <: Equatable<Item> {

    var price: Float64
    var quantity: Int64

    public init(price: Float64, quantity: Int64) {
        this.price = price
        this.quantity = quantity
    }

    public override operator func != (that: Item): Bool {
        return this.price != that.price || this.quantity != that.quantity
    }

    public override operator func == (that: Item): Bool {
        return this.price == that.price && this.quantity == that.quantity
    }
}

class ShoppingCart {

    /*
    The class manages items, their prices, quantities, and allows to for add, removie, view items, and calculate the total price.
    */

    let items: HashMap<String, Item>

    public init() {
        /*
        Initialize the items representing the shopping list as an empty dictionary
        */
        items = HashMap<String, Item>()
    }

    public func add_item(item: String, price: Float64, quantity!: Int64 = 1): Unit {
        /*
        Add item information to the shopping list items, including price and quantity. The default quantity is 1
        :param item: String, Item to be added
        :param price: Float64, The price of the item
        :param quantity:Int64, The number of items, defaults to 1
        :return:Unit
        >>> shoppingcart = ShoppingCart()
        >>> shoppingcart.add_item("apple", 1.0, quantity: 5)
        this.items = {"apple": Item(1.0, 5)}
        */
        
    }

    public func remove_item(item: String, quantity!: Int64 = 1): Unit {
        /*
        Subtract the specified quantity of item from the shopping list items
        :param item:String, Item to be subtracted in quantity
        :param quantity:Int64, Quantity to be subtracted
        :return:Unit
        >>> shoppingcart.add_item("apple", 1.0, quantity: 5)
        >>> shoppingcart.remove_item("apple", quantity: 3)
        this.items = {"apple": Item(1.0, 2)}
        */
        
    }

    public func view_items(): HashMap<String, Item> {
        /*
        Return the current shopping list items
        :return:HashMap<String, Item>, the current shopping list items
        >>> shoppingcart.add_item("apple", 1.0, quantity: 5)
        >>> shoppingcart.remove_item("apple", quantity: 3)
        >>> shoppingcart.view_items()
        {"apple":Item(1.0, 2)}
        */
        
    }

    public func total_price(): Float64 {
        /*
        Calculate the total price of all items in the shopping list, which is the quantity of each item multiplied by the price
        :return:Float64, the total price of all items in the shopping list
        >>> shoppingcart = ShoppingCart()
        >>> shoppingcart.add_item("apple", 1.0, quantity: 5)
        >>> shoppingcart.add_item("banana", 2.0, quantity: 3)
        >>> shoppingcart.total_price()
        11.0
        */
        
    }
}

