func test_main() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.add_stock(Stock("AAPL", 150.0, 10))
    let expected_portfolio1 = ArrayList<Stock>()
    expected_portfolio1.add(Stock("AAPL", 150.0, 10))
    if (tracker.portfolio != expected_portfolio1) {
        throw Exception("Test failed!")
    }
    let buy_result = tracker.buy_stock(Stock("MSFT", 150.0, 10))
    if (buy_result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio2 = ArrayList<Stock>()
    expected_portfolio2.add(Stock("AAPL", 150.0, 10))
    expected_portfolio2.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected_portfolio2) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 8500.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let sell_result = tracker.sell_stock(Stock("AAPL", 150.0, 9))
    if (sell_result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio3 = ArrayList<Stock>()
    expected_portfolio3.add(Stock("AAPL", 150.0, 1))
    expected_portfolio3.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected_portfolio3) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 9850.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let remove_result = tracker.remove_stock(Stock("AAPL", 150.0, 1))
    if (remove_result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio4 = ArrayList<Stock>()
    expected_portfolio4.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected_portfolio4) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.calculate_portfolio_value() - 11350.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let (total_value, stock_values) = tracker.get_portfolio_summary()
    if (abs(total_value - 11350.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let expected_stock_values = ArrayList<HashMap<String, Any>>()
    var stock1 = HashMap<String, Any>()
    stock1["name"] = "MSFT"
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
    if (abs(tracker.get_stock_value(Stock("MSFT", 150.0, 10)) - 1500.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_main_2() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    tracker.add_stock(Stock("MSFT", 150.0, 10))
    let expected_portfolio1 = ArrayList<Stock>()
    expected_portfolio1.add(Stock("AAPL", 150.0, 10))
    expected_portfolio1.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected_portfolio1) {
        throw Exception("Test failed!")
    }
    let remove_result = tracker.remove_stock(Stock("AAPL", 150.0, 10))
    if (remove_result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio2 = ArrayList<Stock>()
    expected_portfolio2.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected_portfolio2) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.calculate_portfolio_value() - 11500.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let (total_value, stock_values) = tracker.get_portfolio_summary()
    if (abs(total_value - 11500.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let expected_stock_values = ArrayList<HashMap<String, Any>>()
    var stock1 = HashMap<String, Any>()
    stock1["name"] = "MSFT"
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
    if (abs(tracker.get_stock_value(Stock("MSFT", 150.0, 10)) - 1500.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let buy_result = tracker.buy_stock(Stock("AAPL", 150.0, 10))
    if (buy_result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio3 = ArrayList<Stock>()
    expected_portfolio3.add(Stock("MSFT", 150.0, 10))
    expected_portfolio3.add(Stock("AAPL", 150.0, 10))
    if (tracker.portfolio != expected_portfolio3) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 8500.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_main_3() {
    let tracker = StockPortfolioTracker(10000.0)
    tracker.portfolio = ArrayList<Stock>()
    tracker.portfolio.add(Stock("AAPL", 150.0, 10))
    tracker.portfolio.add(Stock("MSFT", 150.0, 10))
    if (abs(tracker.get_stock_value(Stock("MSFT", 150.0, 10)) - 1500.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let buy_result = tracker.buy_stock(Stock("AAPL", 150.0, 10))
    if (buy_result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio1 = ArrayList<Stock>()
    expected_portfolio1.add(Stock("AAPL", 150.0, 20))
    expected_portfolio1.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected_portfolio1) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 8500.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let sell_result = tracker.sell_stock(Stock("AAPL", 150.0, 10))
    if (sell_result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio2 = ArrayList<Stock>()
    expected_portfolio2.add(Stock("AAPL", 150.0, 10))
    expected_portfolio2.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected_portfolio2) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.cash_balance - 10000.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let remove_result = tracker.remove_stock(Stock("AAPL", 150.0, 10))
    if (remove_result != true) {
        throw Exception("Test failed!")
    }
    let expected_portfolio3 = ArrayList<Stock>()
    expected_portfolio3.add(Stock("MSFT", 150.0, 10))
    if (tracker.portfolio != expected_portfolio3) {
        throw Exception("Test failed!")
    }
    if (abs(tracker.calculate_portfolio_value() - 11500.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let (total_value, stock_values) = tracker.get_portfolio_summary()
    if (abs(total_value - 11500.0) > 0.001) {
        throw Exception("Test failed!")
    }
    let expected_stock_values = ArrayList<HashMap<String, Any>>()
    var stock1 = HashMap<String, Any>()
    stock1["name"] = "MSFT"
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
    if (abs(tracker.get_stock_value(Stock("MSFT", 150.0, 10)) - 1500.0) > 0.001) {
        throw Exception("Test failed!")
    }
    tracker.add_stock(Stock("AAPL", 150.0, 10))
    let expected_portfolio4 = ArrayList<Stock>()
    expected_portfolio4.add(Stock("MSFT", 150.0, 10))
    expected_portfolio4.add(Stock("AAPL", 150.0, 10))
    if (tracker.portfolio != expected_portfolio4) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
    test_main_2()
    test_main_3()
}