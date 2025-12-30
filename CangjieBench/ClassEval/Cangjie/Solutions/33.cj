import std.collection.ArrayList
import std.math.abs

class Product {
    let name: String
    let quantity: Int64
    let price: Float64

    public init(name: String, quantity: Int64, price: Float64) {
        this.name = name
        this.quantity = quantity
        this.price = price
    }
}

class Customer {
    let name: String
    let fidelity: Int64

    public init(name: String, fidelity: Int64) {
        this.name = name
        this.fidelity = fidelity
    }
}

class DiscountStrategy {

    let customer: Customer
    let cart: ArrayList<Product>
    let promotion: (DiscountStrategy) -> Float64

    public init(customer: Customer, cart: ArrayList<Product>, promotion!: (DiscountStrategy) -> Float64 = {_ => 0.0}) {
        this.customer = customer
        this.cart = cart
        this.promotion = promotion
    }

    public func total(): Float64 {
        var total = 0.0
        for (product in this.cart) {
            total += product.price * Float64(product.quantity)
        }
        return total
    }

    public func due(): Float64 {
        var discount = this.promotion(this)
        return this.total() - discount
    }

    public static func FidelityPromo(order: DiscountStrategy): Float64 {
        return if (order.customer.fidelity >= 1000) {
            order.total() * 0.05
        } else {
            0.0
        }
    }

    public static func BulkItemPromo(order: DiscountStrategy): Float64 {
        var discount = 0.0
        for (product in order.cart) {
            if (product.quantity >= 20) {
                discount += product.price * Float64(product.quantity) * 0.1
            }
        }
        return discount
    }

    public static func LargeOrderPromo(order: DiscountStrategy): Float64 {
        return if (order.cart.size >= 10) {
            order.total() * 0.07
        } else {
            0.0
        }
    }
}
