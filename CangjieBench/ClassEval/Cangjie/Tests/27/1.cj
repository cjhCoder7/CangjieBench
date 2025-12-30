func test_get_supported_currencies_1() {
    let cc = CurrencyConverter()
    let res = cc.get_supported_currencies()
    let expected = ArrayList<String>(["USD", "EUR", "GBP", "JPY", "CAD", "AUD", "CNY"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_supported_currencies_2() {
    let cc = CurrencyConverter()
    let res = cc.get_supported_currencies()
    let expected = ArrayList<String>(["USD", "EUR", "GBP", "JPY", "CAD", "AUD", "CNY"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_supported_currencies_3() {
    let cc = CurrencyConverter()
    let res = cc.get_supported_currencies()
    let expected = ArrayList<String>(["USD", "EUR", "GBP", "JPY", "CAD", "AUD", "CNY"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_supported_currencies_4() {
    let cc = CurrencyConverter()
    let res = cc.get_supported_currencies()
    let expected = ArrayList<String>(["USD", "EUR", "GBP", "JPY", "CAD", "AUD", "CNY"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_supported_currencies_5() {
    let cc = CurrencyConverter()
    let res = cc.get_supported_currencies()
    let expected = ArrayList<String>(["USD", "EUR", "GBP", "JPY", "CAD", "AUD", "CNY"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_supported_currencies_1()
    test_get_supported_currencies_2()
    test_get_supported_currencies_3()
    test_get_supported_currencies_4()
    test_get_supported_currencies_5()
}