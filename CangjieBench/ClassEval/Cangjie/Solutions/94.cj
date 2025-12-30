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

    var inventory: HashMap<String, Product>
    var balance: Float64

    public init() {
        this.inventory = HashMap<String, Product>()
        this.balance = 0.0
    }

    public func add_item(item_name: String, price: Float64, quantity: Int64): Unit {
        if (!this.restock_item(item_name, quantity)) {
            this.inventory[item_name] = Product(price, quantity)
        }
    }

    public func insert_coin(amount: Float64): Float64 {
        this.balance += amount
        return this.balance
    }

    public func purchase_item(item_name: String): Option<Float64> {
        if (this.inventory.contains(item_name)) {
            let item = this.inventory[item_name]
            if (item.quantity > 0 && this.balance >= item.price) {
                this.balance -= item.price
                item.quantity -= 1
                return this.balance
            } else {
                return None
            }
        } else {
            return None
        }
    }

    public func restock_item(item_name: String, quantity: Int64): Bool {
        if (this.inventory.contains(item_name)) {
            this.inventory[item_name].quantity += quantity
            return true
        } else {
            return false
        }
    }

    public func display_items(): Option<String> {
        if (this.inventory.isEmpty()) {
            return None
        } else {
            let items = ArrayList<String>()
            for ((item_name, item_info) in this.inventory) {
                items.add("${item_name} - \$${item_info.price} [${item_info.quantity}]")
            }
            return String.join(items.toArray(), delimiter: "\n")
        }
    }
}

