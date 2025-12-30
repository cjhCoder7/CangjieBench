func test_update_currency_rate_1() {
    let cc = CurrencyConverter()
    cc.update_currency_rate("CNY", 7.18)
    if (cc.rates["CNY"] != 7.18) {
        throw Exception("Test failed!")
    }
}

func test_update_currency_rate_2() {
    let cc = CurrencyConverter()
    cc.update_currency_rate("CNY", 1.0)
    if (cc.rates["CNY"] != 1.0) {
        throw Exception("Test failed!")
    }
}

func test_update_currency_rate_3() {
    let cc = CurrencyConverter()
    cc.update_currency_rate("CNY", 2.0)
    if (cc.rates["CNY"] != 2.0) {
        throw Exception("Test failed!")
    }
}

func test_update_currency_rate_4() {
    let cc = CurrencyConverter()
    cc.update_currency_rate("CNY", 3.0)
    if (cc.rates["CNY"] != 3.0) {
        throw Exception("Test failed!")
    }
}

func test_update_currency_rate_5() {
    let cc = CurrencyConverter()
    cc.update_currency_rate("CNY", 4.0)
    if (cc.rates["CNY"] != 4.0) {
        throw Exception("Test failed!")
    }
}

func test_update_currency_rate_6() {
    let cc = CurrencyConverter()
    let res = cc.update_currency_rate("???", 7.18)
    if (res != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_update_currency_rate_1()
    test_update_currency_rate_2()
    test_update_currency_rate_3()
    test_update_currency_rate_4()
    test_update_currency_rate_5()
    test_update_currency_rate_6()
}