func test_remove_stock() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    let result = tracker.remove_stock(Stock("AAPL", 150.0, 10))
    if (result != true) {
        throw Exception("Test failed!")
    }
    if (tracker.portfolio != ArrayList<Stock>()) {
        throw Exception("Test failed!")
    }
}

func test_remove_stock_2() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    tracker.portfolio.add(Stock("MSFT", 150.0, 10))
    let result = tracker.remove_stock(Stock("AAPL", 150.0, 10))
    if (result != true) {
        throw Exception("Test failed!")
    }
    let expected = ArrayList<Stock>()
    expected.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_stock_3() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    tracker.portfolio.add(Stock("MSFT", 150.0, 10))
    let result = tracker.remove_stock(Stock("MSFT", 150.0, 20))
    if (result != false) {
        throw Exception("Test failed!")
    }
    let expected = ArrayList<Stock>()
    expected.add(Stock("AAPL", 150.0, 10))
    expected.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_stock_4() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    let result = tracker.remove_stock(Stock("MSFT", 150.0, 10))
    if (result != false) {
        throw Exception("Test failed!")
    }
    let expected = ArrayList<Stock>()
    expected.add(Stock("AAPL", 150.0, 10))
    if (tracker.portfolio != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_stock_5() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    tracker.portfolio.add(Stock("MSFT", 150.0, 10))
    let result = tracker.remove_stock(Stock("MSFT", 150.0, 10))
    if (result != true) {
        throw Exception("Test failed!")
    }
    let expected = ArrayList<Stock>()
    expected.add(Stock("AAPL", 150.0, 10))
    if (tracker.portfolio != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_remove_stock()
    test_remove_stock_2()
    test_remove_stock_3()
    test_remove_stock_4()
    test_remove_stock_5()
}