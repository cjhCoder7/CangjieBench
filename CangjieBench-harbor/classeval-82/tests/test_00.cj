import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs

func test_add_stock() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.add_stock(Stock("AAPL", 150.0, 10))
    let expected = ArrayList<Stock>()
    expected.add(Stock("AAPL", 150.0, 10))
    if (tracker.portfolio != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_stock_2() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    tracker.add_stock(Stock("AAPL", 150.0, 10))
    let expected = ArrayList<Stock>()
    expected.add(Stock("AAPL", 150.0, 20))
    if (tracker.portfolio != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_stock_3() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    tracker.add_stock(Stock("MSFT", 150.0, 10))
    let expected = ArrayList<Stock>()
    expected.add(Stock("AAPL", 150.0, 10))
    expected.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_stock_4() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    tracker.add_stock(Stock("AAPL", 150.0, 10))
    tracker.add_stock(Stock("MSFT", 150.0, 10))
    let expected = ArrayList<Stock>()
    expected.add(Stock("AAPL", 150.0, 20))
    expected.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_stock_5() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    tracker.add_stock(Stock("AAPL", 150.0, 10))
    tracker.add_stock(Stock("MSFT", 150.0, 10))
    tracker.add_stock(Stock("MSFT", 150.0, 10))
    let expected = ArrayList<Stock>()
    expected.add(Stock("AAPL", 150.0, 20))
    expected.add(Stock("MSFT", 150.0, 20))
    if (tracker.portfolio != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_stock()
    test_add_stock_2()
    test_add_stock_3()
    test_add_stock_4()
    test_add_stock_5()
}
