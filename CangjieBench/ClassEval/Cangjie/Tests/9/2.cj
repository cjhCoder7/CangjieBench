func test_multiply() {
    if (BigNumCalculator.multiply("12345678901234567890", "98765432109876543210") != "1219326311370217952237463801111263526900") {
        throw Exception("Test failed!")
    }
}

func test_multiply_2() {
    if (BigNumCalculator.multiply("123456789012345678922", "98765432109876543210") != "12193263113702179524547477517529919219620") {
        throw Exception("Test failed!")
    }
}

func test_multiply_3() {
    if (BigNumCalculator.multiply("123456789012345678934", "98765432109876543") != "12193263113702179499806737010255845162") {
        throw Exception("Test failed!")
    }
}

func test_multiply_4() {
    if (BigNumCalculator.multiply("12345678901234567", "98765432109876543210") != "1219326311370217864336229223321140070") {
        throw Exception("Test failed!")
    }
}

func test_multiply_5() {
    if (BigNumCalculator.multiply("923456789", "187654321") != "173290656712635269") {
        throw Exception("Test failed!")
    }
}

func test_multiply_6() {
    if (BigNumCalculator.multiply("000000001", "000000001") != "1") {
        throw Exception("Test failed!")
    }
}

main() {
    test_multiply()
    test_multiply_2()
    test_multiply_3()
    test_multiply_4()
    test_multiply_5()
    test_multiply_6()
}