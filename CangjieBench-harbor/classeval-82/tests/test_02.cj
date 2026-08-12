import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs

func test_buy_stock() {
    let tracker = StockPortfolioTracker(10000.0)
    let result = tracker.buy_stock(Stock("AAPL", 150.0, 10))
    if (result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio = ArrayList<Stock>()
    expected_portfolio.add(Stock("AAPL", 150.0, 10))
    if (tracker.portfolio != expected_portfolio) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 8500.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_buy_stock_2() {
    let tracker = StockPortfolioTracker(1000.0)
    let result = tracker.buy_stock(Stock("AAPL", 150.0, 10))
    if (result != false) {
        throw Exception("Test failed!")
    }
    if (tracker.portfolio != ArrayList<Stock>()) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 1000.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_buy_stock_3() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    let result = tracker.buy_stock(Stock("AAPL", 150.0, 10))
    if (result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio = ArrayList<Stock>()
    expected_portfolio.add(Stock("AAPL", 150.0, 20))
    if (tracker.portfolio != expected_portfolio) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 8500.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_buy_stock_4() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    let result1 = tracker.buy_stock(Stock("MSFT", 150.0, 10))
    let result2 = tracker.buy_stock(Stock("MSFT", 150.0, 10))
    if (result1 != true || result2 != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio = ArrayList<Stock>()
    expected_portfolio.add(Stock("AAPL", 150.0, 10))
    expected_portfolio.add(Stock("MSFT", 150.0, 20))
    if (tracker.portfolio != expected_portfolio) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 7000.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_buy_stock_5() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    let result1 = tracker.buy_stock(Stock("AAPL", 150.0, 10))
    let result2 = tracker.buy_stock(Stock("MSFT", 150.0, 10))
    if (result1 != true || result2 != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio = ArrayList<Stock>()
    expected_portfolio.add(Stock("AAPL", 150.0, 20))
    expected_portfolio.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected_portfolio) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 7000.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_buy_stock()
    test_buy_stock_2()
    test_buy_stock_3()
    test_buy_stock_4()
    test_buy_stock_5()
}
