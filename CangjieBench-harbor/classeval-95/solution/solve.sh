#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
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

    let inventory: HashMap<Int64, Product>
    let orders: HashMap<Int64, Order>

    public init() {
        this.inventory = HashMap<Int64, Product>()  // Product ID: Product
        this.orders = HashMap<Int64, Order>()  // Order ID: Order
    }

    public func add_product(product_id: Int64, name: String, quantity: Int64): Unit {
        if (!this.inventory.contains(product_id)) {
            this.inventory[product_id] = Product(name, quantity)
        } else {
            this.inventory[product_id].quantity += quantity
        }
    }

    public func update_product_quantity(product_id: Int64, quantity: Int64): Unit {
        if (this.inventory.contains(product_id)) {
            this.inventory[product_id].quantity += quantity
        }
    }

    public func get_product_quantity(product_id: Int64): Option<Int64> {
        if (this.inventory.contains(product_id)) {
            return this.inventory[product_id].quantity
        } else {
            return None
        }
    }

    public func create_order(order_id: Int64, product_id: Int64, quantity: Int64): Bool {
        if ((this.get_product_quantity(product_id) ?? -1) >= quantity) {
            this.update_product_quantity(product_id, -quantity)
            this.orders[order_id] = Order(product_id, quantity, "Shipped")
            return true
        } else {
            return false
        }
    }

    public func change_order_status(order_id: Int64, status: String): Bool {
        if (this.orders.contains(order_id)) {
            this.orders[order_id].status = status
            return true
        } else {
            return false
        }
    }

    public func track_order(order_id: Int64): Option<String> {
        if (this.orders.contains(order_id)) {
            return this.orders[order_id].status
        } else {
            return None
        }
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
