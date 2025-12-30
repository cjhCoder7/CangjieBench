import std.collection.HashMap
import std.collection.ArrayList
import std.math.abs

class CurrencyConverter {

    let rates: HashMap<String, Float64>

    public init() {
        this.rates = HashMap<String, Float64>()
        this.rates.add('USD', 1.0)
        this.rates.add('EUR', 0.85)
        this.rates.add('GBP', 0.72)
        this.rates.add('JPY', 110.15)
        this.rates.add('CAD', 1.23)
        this.rates.add('AUD', 1.34)
        this.rates.add('CNY', 6.40)
    }

    public func convert(amount: Float64, from_currency: String, to_currency: String): Float64 {
        if (from_currency == to_currency) {
            return amount
        }

        if (!this.rates.contains(from_currency) || !this.rates.contains(to_currency)) {
            return -1.0
        }

        let from_rate = this.rates[from_currency]
        let to_rate = this.rates[to_currency]
        
        let converted_amount = (amount / from_rate) * to_rate
        return converted_amount
    }

    public func get_supported_currencies(): ArrayList<String> {
        return ArrayList<String>(this.rates.keys())
    }

    public func add_currency_rate(currency: String, rate: Float64): Bool {
        if (this.rates.contains(currency)) {
            return false
        }
        this.rates.add(currency, rate)
        return true
    }

    public func update_currency_rate(currency: String, new_rate: Float64): Bool {
        if (!this.rates.contains(currency)) {
            return false
        }
        this.rates[currency] = new_rate
        return true
    }
}
