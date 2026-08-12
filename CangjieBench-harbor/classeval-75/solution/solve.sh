#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
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

    let items: HashMap<String, Item>

    public init() {
        items = HashMap<String, Item>()
    }

    public func add_item(item: String, price: Float64, quantity!: Int64 = 1): Unit {
        if (this.items.contains(item)) {
            this.items[item] = Item(price, quantity)
        } else {
            this.items[item] = Item(price, quantity)
        }
    }

    public func remove_item(item: String, quantity!: Int64 = 1): Unit {
        if (this.items.contains(item)) {
            this.items[item].quantity -= quantity
        } else {}
    }

    public func view_items(): HashMap<String, Item> {
        return this.items
    }

    public func total_price(): Float64 {
        var sum = 0.0
        for (item in this.items.values()) {
            sum += item.price * Float64(item.quantity)
        }
        return sum
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
