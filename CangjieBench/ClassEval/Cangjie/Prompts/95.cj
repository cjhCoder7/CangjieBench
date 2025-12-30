import std.collection.HashMap

class Product <: Equatable<Product> {

    let name: String
    var quantity: Int64

    public init(name: String, quantity: Int64) {
        this.name = name
        this.quantity = quantity
    }

    public override operator func != (that: Product): Bool {
        return this.name != that.name || this.quantity != that.quantity
    }

    public override operator func == (that: Product): Bool {
        return this.name == that.name && this.quantity == that.quantity
    }
}

class Order <: Equatable<Order> {

    let product_id: Int64
    let quantity: Int64
    var status: String

    public init(product_id: Int64, quantity: Int64, status: String) {
        this.product_id = product_id
        this.quantity = quantity
        this.status = status
    }

    public override operator func != (that: Order): Bool {
        return this.product_id != that.product_id || this.quantity != that.quantity || this.status != that.status
    }

    public override operator func == (that: Order): Bool {
        return this.product_id == that.product_id && this.quantity == that.quantity && this.status == that.status
    }
}

class Warehouse {

    /*
    The class manages inventory and orders, including adding products, updating product quantities, retrieving product quantities, creating orders, changing order statuses, and tracking orders.
    */

    let inventory: HashMap<Int64, Product>
    let orders: HashMap<Int64, Order>

    public init() {
        /*
        Initialize two fields.
        this.inventory is a dict that stores the products.
        this.inventory = {Product ID: Product}
        this.orders is a dict that stores the products in a order.
        this.orders = {Order ID: Order}
        */
        this.inventory = HashMap<Int64, Product>()  // Product ID: Product
        this.orders = HashMap<Int64, Order>()  // Order ID: Order
    }

    public func add_product(product_id: Int64, name: String, quantity: Int64): Unit {
        /*
        Add product to inventory and plus the quantity if it has existed in inventory.
        Or just add new product to dict otherwise.
        :param product_id: Int64
        :param name: String, product name
        :param quantity: Int64, product quantity
        >>> warehouse.add_product(1, "product1", 3)
        >>> warehouse.inventory
        {1: Product('product1', 3)}
        */
        
    }

    public func update_product_quantity(product_id: Int64, quantity: Int64): Unit {
        /*
        According to product_id, add the quantity to the corresponding product in inventory.
        >>> warehouse.add_product(1, "product1", 3)
        >>> warehouse.update_product_quantity(1, -1)
        >>> warehouse.inventory
        {1: Product('product1', 2)}
        */
        
    }

    public func get_product_quantity(product_id: Int64): Option<Int64> {
        /*
        Get the quantity of specific product by product_id.
        :param product_id, Int64
        :return: if the product_id is in inventory then return the corresponding quantity,
                or None otherwise.
        >>> warehouse.add_product(1, "product1", 3)
        >>> warehouse.get_product_quantity(1)
        3
        >>> warehouse.get_product_quantity(2)
        None
        */
        
    }

    public func create_order(order_id: Int64, product_id: Int64, quantity: Int64): Bool {
        /*
        Create a order which includes the infomation of product, like id and quantity.
        And put the new order into this.orders.
        The default value of status is 'Shipped'.
        :param order_id: Int64
        :param product_id: Int64
        :param quantity: the quantity of product that be selected.
        :return false: only if product_id is not in inventory or the quantity is not adequate
        >>> warehouse.add_product(1, "product1", 3)
        >>> warehouse.create_order(1, 1, 2)
        >>> warehouse.orders
        {1: Order(1, 2, 'Shipped')}
        >>> warehouse.create_order(1, 2, 2)
        false
        */
        
    }

    public func change_order_status(order_id: Int64, status: String): Bool {
        /*
        Change the status of order if the input order_id is in this.orders.
        :param order_id: Int64
        :param status: String, the state that is going to change to
        :return false: only if the order_id is not in this.orders
        >>> warehouse.add_product(1, "product1", 3)
        >>> warehouse.create_order(1, 1, 2)
        >>> warehouse.change_order_status(1, "done")
        >>> warehouse.orders
        {1: Order(1, 2, 'done')}
        */
        
    }

    public func track_order(order_id: Int64): Option<String> {
        /*
        Get the status of specific order.
        :param order_id: Int64
        :return None: only if the order_id is not in this.orders.
        >>> warehouse.add_product(1, "product1", 3)
        >>> warehouse.create_order(1, 1, 2)
        >>> warehouse.track_order(1)
        'Shipped'
        */
        
    }
}

