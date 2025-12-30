func test_get_portfolio_summary() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    let (total_value, stock_values) = tracker.get_portfolio_summary()
    if (abs(total_value - 11500.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let expected_stock_values = ArrayList<HashMap<String, Any>>()
    var stock1 = HashMap<String, Any>()
    stock1["name"] = "AAPL"
    stock1["value"] = 1500.0
    expected_stock_values.add(stock1)
    if (stock_values.size != expected_stock_values.size) {
        throw Exception("Test failed!")
    }
    if ((stock_values[0]["name"] as String) != (expected_stock_values[0]["name"] as String)) {
        throw Exception("Test failed!")
    }
    if (abs(((stock_values[0]["value"] as Float64) ?? 0.0) - ((expected_stock_values[0]["value"] as Float64) ?? 0.0)) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_get_portfolio_summary_2() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    tracker.portfolio.add(Stock("MSFT", 150.0, 10))
    let (total_value, stock_values) = tracker.get_portfolio_summary()
    if (abs(total_value - 13000.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let expected_stock_values = ArrayList<HashMap<String, Any>>()
    var stock1 = HashMap<String, Any>()
    stock1["name"] = "AAPL"
    stock1["value"] = 1500.0
    expected_stock_values.add(stock1)
    var stock2 = HashMap<String, Any>()
    stock2["name"] = "MSFT"
    stock2["value"] = 1500.0
    expected_stock_values.add(stock2)
    if (stock_values.size != expected_stock_values.size) {
        throw Exception("Test failed!")
    }
    if ((stock_values[0]["name"] as String) != (expected_stock_values[0]["name"] as String)) {
        throw Exception("Test failed!")
    }
    if (abs(((stock_values[0]["value"] as Float64) ?? 0.0) - ((expected_stock_values[0]["value"] as Float64) ?? 0.0)) > 0.001) {
        throw Exception("Test failed!")
    }
    if ((stock_values[1]["name"] as String) != (expected_stock_values[1]["name"] as String)) {
        throw Exception("Test failed!")
    }
    if (abs(((stock_values[1]["value"] as Float64) ?? 0.0) - ((expected_stock_values[1]["value"] as Float64) ?? 0.0)) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_get_portfolio_summary_3() {
    let tracker = StockPortfolioTracker(10000.0)
    let (total_value, stock_values) = tracker.get_portfolio_summary()
    if (abs(total_value - 10000.0) > 0.001) {
        throw Exception("Test failed!")
    }
    if (stock_values.size != 0) {
        throw Exception("Test failed!")
    }
}

func test_get_portfolio_summary_4() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 0))
    let (total_value, stock_values) = tracker.get_portfolio_summary()
    if (abs(total_value - 10000.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let expected_stock_values = ArrayList<HashMap<String, Any>>()
    var stock1 = HashMap<String, Any>()
    stock1["name"] = "AAPL"
    stock1["value"] = 0.0
    expected_stock_values.add(stock1)
    if (stock_values.size != expected_stock_values.size) {
        throw Exception("Test failed!")
    }
    if ((stock_values[0]["name"] as String) != (expected_stock_values[0]["name"] as String)) {
        throw Exception("Test failed!")
    }
    if (abs(((stock_values[0]["value"] as Float64) ?? 0.0) - ((expected_stock_values[0]["value"] as Float64) ?? 0.0)) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_get_portfolio_summary_5() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 0.0, 10))
    let (total_value, stock_values) = tracker.get_portfolio_summary()
    if (abs(total_value - 10000.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let expected_stock_values = ArrayList<HashMap<String, Any>>()
    var stock1 = HashMap<String, Any>()
    stock1["name"] = "AAPL"
    stock1["value"] = 0.0
    expected_stock_values.add(stock1)
    if (stock_values.size != expected_stock_values.size) {
        throw Exception("Test failed!")
    }
    if ((stock_values[0]["name"] as String) != (expected_stock_values[0]["name"] as String)) {
        throw Exception("Test failed!")
    }
    if (abs(((stock_values[0]["value"] as Float64) ?? 0.0) - ((expected_stock_values[0]["value"] as Float64) ?? 0.0)) > 0.001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_portfolio_summary()
    test_get_portfolio_summary_2()
    test_get_portfolio_summary_3()
    test_get_portfolio_summary_4()
    test_get_portfolio_summary_5()
}