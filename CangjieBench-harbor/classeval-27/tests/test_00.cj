import std.collection.HashMap
import std.collection.ArrayList
import std.math.abs

func test_convert_1() {
    let cc = CurrencyConverter()
    let res = cc.convert(64.0, "CNY", "USD")
    if (abs(res - 10.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_convert_2() {
    let cc = CurrencyConverter()
    let res = cc.convert(64.0, "USD", "USD")
    if (abs(res - 64.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_convert_3() {
    let cc = CurrencyConverter()
    let res = cc.convert(64.0, "CNY", "GBP")
    if (abs(res - 7.2) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_convert_4() {
    let cc = CurrencyConverter()
    let res = cc.convert(64.0, "USD", "GBP")
    if (abs(res - 46.08) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_convert_5() {
    let cc = CurrencyConverter()
    let res = cc.convert(64.0, "USD", "CAD")
    if (abs(res - 78.72) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_convert_6() {
    let cc = CurrencyConverter()
    let res = cc.convert(64.0, "???", "USD")
    if (res != -1.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_convert_1()
    test_convert_2()
    test_convert_3()
    test_convert_4()
    test_convert_5()
    test_convert_6()
}
