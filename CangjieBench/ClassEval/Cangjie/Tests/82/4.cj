func test_calculate_portfolio_value() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    if (abs(tracker.calculate_portfolio_value() - 11500.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_calculate_portfolio_value_2() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    tracker.portfolio.add(Stock("MSFT", 150.0, 10))
    if (abs(tracker.calculate_portfolio_value() - 13000.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_calculate_portfolio_value_3() {
    let tracker = StockPortfolioTracker(10000.0)
    if (abs(tracker.calculate_portfolio_value() - 10000.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_calculate_portfolio_value_4() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 0))
    if (abs(tracker.calculate_portfolio_value() - 10000.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_calculate_portfolio_value_5() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 0.0, 10))
    if (abs(tracker.calculate_portfolio_value() - 10000.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_portfolio_value()
    test_calculate_portfolio_value_2()
    test_calculate_portfolio_value_3()
    test_calculate_portfolio_value_4()
    test_calculate_portfolio_value_5()
}