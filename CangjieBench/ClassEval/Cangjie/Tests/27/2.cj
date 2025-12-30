func test_add_currency_rate_1() {
    let cc = CurrencyConverter()
    cc.add_currency_rate("KRW", 1308.84)
    if (cc.rates["KRW"] != 1308.84) {
        throw Exception("Test failed!")
    }
}

func test_add_currency_rate_2() {
    let cc = CurrencyConverter()
    cc.add_currency_rate("aaa", 1.0)
    if (cc.rates["aaa"] != 1.0) {
        throw Exception("Test failed!")
    }
}

func test_add_currency_rate_3() {
    let cc = CurrencyConverter()
    cc.add_currency_rate("bbb", 2.0)
    if (cc.rates["bbb"] != 2.0) {
        throw Exception("Test failed!")
    }
}

func test_add_currency_rate_4() {
    let cc = CurrencyConverter()
    cc.add_currency_rate("ccc", 3.0)
    if (cc.rates["ccc"] != 3.0) {
        throw Exception("Test failed!")
    }
}

func test_add_currency_rate_5() {
    let cc = CurrencyConverter()
    cc.add_currency_rate("ddd", 4.0)
    if (cc.rates["ddd"] != 4.0) {
        throw Exception("Test failed!")
    }
}

func test_add_currency_rate_6() {
    let cc = CurrencyConverter()
    let res = cc.add_currency_rate("USD", 1.0)
    if (res != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_currency_rate_1()
    test_add_currency_rate_2()
    test_add_currency_rate_3()
    test_add_currency_rate_4()
    test_add_currency_rate_5()
    test_add_currency_rate_6()
}