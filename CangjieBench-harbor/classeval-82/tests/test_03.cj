import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs

func test_sell_stock() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    let result = tracker.sell_stock(Stock("AAPL", 150.0, 9))
    if (result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio = ArrayList<Stock>()
    expected_portfolio.add(Stock("AAPL", 150.0, 1))
    if (tracker.portfolio != expected_portfolio) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 11350.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_sell_stock_2() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    let result = tracker.sell_stock(Stock("AAPL", 150.0, 20))
    if (result != false) {
        throw Exception("Test failed!")
    }
    let expected_portfolio = ArrayList<Stock>()
    expected_portfolio.add(Stock("AAPL", 150.0, 10))
    if (tracker.portfolio != expected_portfolio) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 10000.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_sell_stock_3() {
    let tracker = StockPortfolioTracker(10000.0)
    let result = tracker.sell_stock(Stock("AAPL", 150.0, 10))
    if (result != false) {
        throw Exception("Test failed!")
    }
    if (tracker.portfolio != ArrayList<Stock>()) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 10000.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_sell_stock_4() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 20))
    let result = tracker.sell_stock(Stock("AAPL", 150.0, 20))
    if (result != true) {
        throw Exception("Test failed!")
    }
    if (tracker.portfolio != ArrayList<Stock>()) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 13000.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_sell_stock_5() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 20))
    tracker.portfolio.add(Stock("MSFT", 150.0, 10))
    let result = tracker.sell_stock(Stock("AAPL", 150.0, 20))
    if (result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio = ArrayList<Stock>()
    expected_portfolio.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected_portfolio) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 13000.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_sell_stock()
    test_sell_stock_2()
    test_sell_stock_3()
    test_sell_stock_4()
    test_sell_stock_5()
}
