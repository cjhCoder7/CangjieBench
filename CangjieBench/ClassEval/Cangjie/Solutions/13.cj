import std.collection.HashMap

class BookManagement {

    let inventory: HashMap<String, Int64>

    public init() {
        this.inventory = HashMap<String, Int64>()
    }

    public func add_book(title: String, quantity!: Int64=1): Unit {
        if (this.inventory.contains(title)) {
            this.inventory[title] = this.inventory[title] + quantity
        } else {
            this.inventory.add(title, quantity)
        }
    }

    public func remove_book(title: String, quantity: Int64): Unit {
        if (!this.inventory.contains(title) || this.inventory[title] < quantity) {
            throw Exception("Invalid operation")
        }
        this.inventory[title] -= quantity
        if (this.inventory[title] == 0) {
            this.inventory.remove(title)
        }
    }

    public func view_inventory(): HashMap<String, Int64> {
        return this.inventory
    }

    public func view_book_quantity(title: String): Int64 {
        if (!this.inventory.contains(title)) {
            return 0
        }
        return this.inventory[title]
    }
}
