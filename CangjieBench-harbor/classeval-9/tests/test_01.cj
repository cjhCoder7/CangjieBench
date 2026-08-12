import std.convert.Parsable

func test_subtract() {
    if (BigNumCalculator.subtract("12345678901234567890", "98765432109876543210") != "-86419753208641975320") {
        throw Exception("Test failed!")
    }
}

func test_subtract_2() {
    if (BigNumCalculator.subtract("123456789012345678922", "98765432109876543210") != "24691356902469135712") {
        throw Exception("Test failed!")
    }
}

func test_subtract_3() {
    if (BigNumCalculator.subtract("123456789012345678934", "98765432109876543") != "123358023580235802391") {
        throw Exception("Test failed!")
    }
}

func test_subtract_4() {
    if (BigNumCalculator.subtract("12345678901234567", "98765432109876543210") != "-98753086430975308643") {
        throw Exception("Test failed!")
    }
}

func test_subtract_5() {
    if (BigNumCalculator.subtract("923456789", "187654321") != "735802468") {
        throw Exception("Test failed!")
    }
}

main() {
    test_subtract()
    test_subtract_2()
    test_subtract_3()
    test_subtract_4()
    test_subtract_5()
}
