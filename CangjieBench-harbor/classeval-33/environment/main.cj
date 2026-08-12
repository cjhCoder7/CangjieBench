import std.collection.ArrayList
import std.math.abs

class Product {
    let name: String
    let quantity: Int64
    let price: Float64

    public init(name: String, quantity: Int64, price: Float64) {
        /*
        Initialize a Product instance with name, quantity, and price.
        :param name: String, the name of the product
        :param quantity: Int64, the quantity of the product in stock or in cart
        :param price: Float64, the unit price of the product
        >>> product = Product("Apple", 5, 2.5)
        >>> product.name
        "Apple"
        >>> product.quantity
        5
        >>> product.price
        2.5

        */
        this.name = name
        this.quantity = quantity
        this.price = price
    }
}

class Customer {
    let name: String
    let fidelity: Int64

    public init(name: String, fidelity: Int64) {
        /*
        Initialize a Customer instance with name and fidelity points.
        :param name: String, the name of the customer
        :param fidelity: Int64, the fidelity points the customer has accumulated
        >>> customer = Customer("Alice", 1500)
        >>> customer.name
        "Alice"
        >>> customer.fidelity
        1500

        */
        this.name = name
        this.fidelity = fidelity
    }
}

class DiscountStrategy {

    /*
    This is a class that allows to use different discount strategy based on shopping credit or shopping cart in supermarket.
    */

    let customer: Customer
    let cart: ArrayList<Product>
    let promotion: (DiscountStrategy) -> Float64

    public init(customer: Customer, cart: ArrayList<Product>, promotion!: (DiscountStrategy) -> Float64 = {_ => 0.0}) {
        /*
        Initialize the DiscountStrategy with customer information, a cart of items, and an optional promotion.
        :param customer: Customer, customer information
        :param cart: list of Product, a cart of items with details
        :param promotion: function, optional promotion applied to the order
        >>> customer = Customer('John Doe', 1200)
        >>> cart = ArrayList<Product>()
        >>> cart.add(Product('product', 14, 23.5))
        >>> DiscountStrategy(customer, cart, promotion: DiscountStrategy.FidelityPromo)

        */
        this.customer = customer
        this.cart = cart
        this.promotion = promotion
    }

    public func total(): Float64 {
        /*
        Calculate the total cost of items in the cart.
        :return: Float64, total cost of items
        >>> customer = Customer('John Doe', 1200)
        >>> cart = ArrayList<Product>()
        >>> cart.add(Product('product', 14, 23.5))
        >>> ds = DiscountStrategy(customer, cart)
        >>> ds.total()
        329.0

        */
        
    }

    public func due(): Float64 {
        /*
        Calculate the final amount to be paid after applying the discount.
        :return: Float64, final amount to be paid
        >>> customer = Customer('John Doe', 1200)
        >>> cart = ArrayList<Product>()
        >>> cart.add(Product('product', 14, 23.5))
        >>> ds = DiscountStrategy(customer, cart, promotion: DiscountStrategy.FidelityPromo)
        >>> ds.due()
        312.55

        */
        
    }

    public static func FidelityPromo(order: DiscountStrategy): Float64 {
        /*
        Calculate the discount based on the fidelity points of the customer.Customers with over 1000 points can enjoy a 5% discount on the entire order.
        :param order: DiscountStrategy, the order to apply the discount to
        :return: Float64, discount amount
        >>> customer = Customer('John Doe', 1200)
        >>> cart = ArrayList<Product>()
        >>> cart.add(Product('product', 14, 23.5))
        >>> order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.FidelityPromo)
        >>> DiscountStrategy.FidelityPromo(order)
        16.45

        */
        
    }

    public static func BulkItemPromo(order: DiscountStrategy): Float64 {
        /*
        Calculate the discount based on bulk item quantity in the order.In the same order, if the quantity of a single item reaches 20 or more, each item will enjoy a 10% discount.
        :param order: DiscountStrategy, the order to apply the discount to
        :return: Float64, discount amount
        >>> customer = Customer('John Doe', 1200)
        >>> cart = ArrayList<Product>()
        >>> cart.add(Product('product', 20, 23.5))
        >>> order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.BulkItemPromo)
        >>> DiscountStrategy.BulkItemPromo(order)
        47.0

        */
        
    }

    public static func LargeOrderPromo(order: DiscountStrategy): Float64 {
        /*
        Calculate the discount based on the number of different products in the order.If the quantity of different products in the order reaches 10 or more, the entire order will enjoy a 7% discount.
        :param order: DiscountStrategy, the order to apply the discount to
        :return: Float64, discount amount
        >>> customer = Customer('John Doe', 1200)
        >>> cart = ArrayList<Product>()
        >>> cart.add(Product('product', 14, 23.5))
        >>> order = DiscountStrategy(customer, cart, promotion: DiscountStrategy.LargeOrderPromo)
        >>> DiscountStrategy.LargeOrderPromo(order)
        0.0

        */
        
    }
}
