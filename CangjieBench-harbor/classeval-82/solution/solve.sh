#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs

class Stock <: Equatable<Stock> {

    let name: String
    var price: Float64
    var quantity: Int64

    public init(name: String, price: Float64, quantity: Int64) {
        this.name = name
        this.price = price
        this.quantity = quantity
    }

    public override operator func != (that: Stock): Bool {
        return this.name != that.name || this.price != that.price || this.quantity != that.quantity
    }

    public override operator func == (that: Stock): Bool {
        return this.name == that.name && this.price == that.price && this.quantity == that.quantity
    }
}

class StockPortfolioTracker {

    var portfolio: ArrayList<Stock>
    var cash_balance: Float64

    public init(cash_balance: Float64) {
        this.portfolio = ArrayList<Stock>()
        this.cash_balance = cash_balance
    }

    public func add_stock(stock: Stock): Unit {
        for (pf in this.portfolio) {
            if (pf.name == stock.name) {
                pf.quantity += stock.quantity
                return
            }
        }
        this.portfolio.add(stock)
    }

    public func remove_stock(stock: Stock): Bool {
        for (pf in this.portfolio) {
            if (pf.name == stock.name && pf.quantity >= stock.quantity) {
                pf.quantity -= stock.quantity
                if (pf.quantity == 0) {
                    this.portfolio.removeIf({s: Stock => s == pf})
                }
                return true
            }
        }
        return false
    }

    public func buy_stock(stock: Stock): Bool {
        if (stock.price * Float64(stock.quantity) > this.cash_balance) {
            return false
        } else {
            this.add_stock(stock)
            this.cash_balance -= stock.price * Float64(stock.quantity)
            return true
        }
    }

    public func sell_stock(stock: Stock): Bool {
        if (this.remove_stock(stock) == false) {
            return false
        }
        this.cash_balance += stock.price * Float64(stock.quantity)
        return true
    }

    public func calculate_portfolio_value(): Float64 {
        var total_value = this.cash_balance
        for (stock in this.portfolio) {
            total_value += stock.price * Float64(stock.quantity)
        }
        return total_value
    }

    public func get_portfolio_summary(): (Float64, ArrayList<HashMap<String, Any>>) {
        let summary = ArrayList<HashMap<String, Any>>()
        for (stock in this.portfolio) {
            let value = this.get_stock_value(stock)
            let stock_summary = HashMap<String, Any>()
            stock_summary["name"] = stock.name
            stock_summary["value"] = value
            summary.add(stock_summary)
        }
        let portfolio_value = this.calculate_portfolio_value()
        return (portfolio_value, summary)
    }

    public func get_stock_value(stock: Stock): Float64 {
        return stock.price * Float64(stock.quantity)
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
