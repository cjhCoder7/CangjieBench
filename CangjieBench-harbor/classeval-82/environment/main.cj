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

    /*
    This is a class as StockPortfolioTracker that allows to add stocks, remove stocks, buy stocks, sell stocks, calculate the total value of the portfolio, and obtain a summary of the portfolio.
    */

    var portfolio: ArrayList<Stock>
    var cash_balance: Float64

    public init(cash_balance: Float64) {
        /*
        Initialize the StockPortfolioTracker class with a cash balance and an empty portfolio.
        */
        this.portfolio = ArrayList<Stock>()
        this.cash_balance = cash_balance
    }

    public func add_stock(stock: Stock): Unit {
        /*
        Add a stock to the portfolio.
        :param stock: Stock
        >>> tracker = StockPortfolioTracker(10000.0)
        >>> tracker.add_stock(Stock("AAPL", 150.0, 10))
        >>> tracker.portfolio
        [Stock("AAPL", 150.0, 10)]

        */
        
    }

    public func remove_stock(stock: Stock): Bool {
        /*
        Remove a stock from the portfolio.
        :param stock: Stock
        >>> tracker = StockPortfolioTracker(10000.0)
        >>> tracker.portfolio = [Stock("AAPL", 150.0, 10)]
        >>> tracker.remove_stock(Stock("AAPL", 150.0, 10))
        true
        >>> tracker.portfolio
        []

        */
        
    }

    public func buy_stock(stock: Stock): Bool {
        /*
        Buy a stock and add it to the portfolio.
        :param stock: Stock
        :return: true if the stock was bought successfully, false if the cash balance is not enough.
        >>> tracker = StockPortfolioTracker(10000.0)
        >>> tracker.buy_stock(Stock("AAPL", 150.0, 10))
        true
        >>> tracker.portfolio
        [Stock("AAPL", 150.0, 10)]

        */
        
    }

    public func sell_stock(stock: Stock): Bool {
        /*
        Sell a stock and remove it from the portfolio and add the cash to the cash balance.
        :param stock: Stock
        :return: true if the stock was sold successfully, false if the quantity of the stock is not enough.
        >>> tracker = StockPortfolioTracker(10000.0)
        >>> tracker.portfolio = [Stock("AAPL", 150.0, 10)]
        >>> tracker.sell_stock(Stock("AAPL", 150.0, 10))
        true
        >>> tracker.portfolio
        []

        */
        
    }

    public func calculate_portfolio_value(): Float64 {
        /*
        Calculate the total value of the portfolio.
        :return: the total value of the portfolio, Float64.
        >>> tracker = StockPortfolioTracker(10000.0)
        >>> tracker.portfolio = [Stock("AAPL", 150.0, 10)]
        >>> tracker.calculate_portfolio_value()
        11500.0

        */
        
    }

    public func get_portfolio_summary(): (Float64, ArrayList<HashMap<String, Any>>) {
        /*
        Get a summary of the portfolio.
        :return: a tuple of the total value of the portfolio and a list of dictionaries with keys "name" and "value"
        >>> tracker = StockPortfolioTracker(10000.0)
        >>> tracker.portfolio = [Stock("AAPL", 150.0, 10)]
        >>> tracker.get_portfolio_summary()
        (11500.0, [{'name': 'AAPL', 'value': 1500.0}])

        */
        
    }

    public func get_stock_value(stock: Stock): Float64 {
        /*
        Get the value of a stock.
        :param stock: Stock
        :return: the value of the stock, Float64.
        >>> tracker = StockPortfolioTracker(10000.0)
        >>> tracker.get_stock_value(Stock("AAPL", 150.0, 10))
        1500.0

        */
        
    }
}

