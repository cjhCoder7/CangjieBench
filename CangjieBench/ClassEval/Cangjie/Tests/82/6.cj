func test_get_stock_value() {
    let tracker = StockPortfolioTracker(10000.0)
    let stock = Stock("AAPL", 150.0, 10)
    if (abs(tracker.get_stock_value(stock) - 1500.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_get_stock_value_2() {
    let tracker = StockPortfolioTracker(10000.0)
    let stock = Stock("AAPL", 150.0, 0)
    if (abs(tracker.get_stock_value(stock) - 0.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_get_stock_value_3() {
    let tracker = StockPortfolioTracker(10000.0)
    let stock = Stock("AAPL", 0.0, 10)
    if (abs(tracker.get_stock_value(stock) - 0.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_get_stock_value_4() {
    let tracker = StockPortfolioTracker(10000.0)
    let stock = Stock("AAPL", 0.0, 0)
    if (abs(tracker.get_stock_value(stock) - 0.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_get_stock_value_5() {
    let tracker = StockPortfolioTracker(10000.0)
    let stock = Stock("MSFL", 150.0, 2)
    if (abs(tracker.get_stock_value(stock) - 300.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_stock_value()
    test_get_stock_value_2()
    test_get_stock_value_3()
    test_get_stock_value_4()
    test_get_stock_value_5()
}