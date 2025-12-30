import std.collection.HashMap
import std.collection.ArrayList
import std.math.abs

class CurrencyConverter {

    /*
    This is a class for currency conversion, which supports to convert amounts between different currencies, retrieve supported currencies, add new currency rates, and update existing currency rates.
    */

    let rates: HashMap<String, Float64>

    public init() {
        /*
        Initialize the exchange rate of the US dollar against various currencies
        */
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
        /*
        Convert the value of a given currency to another currency type
        :param amount: Float64, The value of a given currency
        :param from_currency: String, source currency type
        :param to_currency: String, target currency type
        :return: Float64, value converted to another currency type
        >>> cc = CurrencyConverter()
        >>> cc.convert(64.0, 'CNY','USD')
        10.0
        */
        
    }

    public func get_supported_currencies(): ArrayList<String> {
        /*
        Returns a list of supported currency types
        :return: ArrayList<String>, All supported currency types
        >>> cc = CurrencyConverter()
        >>> cc.get_supported_currencies()
        ['USD','EUR','GBP','JPY','CAD','AUD','CNY']
        */
        
    }

    public func add_currency_rate(currency: String, rate: Float64): Bool {
        /*
        Add a new supported currency type, return false if the currency type is already in the support list
        :param currency:String, currency type to be added
        :param rate:Float64, exchange rate for this type of currency
        :return:If successful, returns true; if unsuccessful, returns false
        >>> cc = CurrencyConverter()
        >>> cc.add_currency_rate('KRW', 1308.84)
        true
        this.rates['KRW'] = 1308.84
        */
        
    }

    public func update_currency_rate(currency: String, new_rate: Float64): Bool {
        /*
        Update the exchange rate for a certain currency
        :param currency:String
        :param new_rate:Float64
        :return:If successful, returns true; if unsuccessful, returns false
        >>> cc = CurrencyConverter()
        >>> cc.update_currency_rate('CNY', 7.18)
        true
        this.rates['CNY'] = 7.18
        */
        
    }
}
