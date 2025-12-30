func test_currencyconverter() {
    let cc = CurrencyConverter()
    let res = cc.convert(64.0, "CNY", "USD")
    if (abs(res - 10.0) > 0.01) {
        throw Exception("Test failed!")
    }
    let res2 = cc.get_supported_currencies()
    let expected = ArrayList<String>(["USD", "EUR", "GBP", "JPY", "CAD", "AUD", "CNY"])
    if (res2 != expected) {
        throw Exception("Test failed!")
    }
    cc.add_currency_rate("KRW", 1308.84)
    if (cc.rates["KRW"] != 1308.84) {
        throw Exception("Test failed!")
    }
    cc.update_currency_rate("CNY", 7.18)
    if (cc.rates["CNY"] != 7.18) {
        throw Exception("Test failed!")
    }
}

main() {
    test_currencyconverter()
}