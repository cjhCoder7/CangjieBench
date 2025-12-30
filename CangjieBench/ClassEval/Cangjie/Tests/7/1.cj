func test_check_balanced_brackets() {
    let b = BalancedBrackets("a(b)c")
    if (b.check_balanced_brackets() != true) {
        throw Exception("Test failed!")
    }
}

func test_check_balanced_brackets_2() {
    let b = BalancedBrackets("a(b){c}")
    if (b.check_balanced_brackets() != true) {
        throw Exception("Test failed!")
    }
}

func test_check_balanced_brackets_3() {
    let b = BalancedBrackets("[a](b){c}")
    if (b.check_balanced_brackets() != true) {
        throw Exception("Test failed!")
    }
}

func test_check_balanced_brackets_4() {
    let b = BalancedBrackets("[a(b){c}")
    if (b.check_balanced_brackets() != false) {
        throw Exception("Test failed!")
    }
}

func test_check_balanced_brackets_5() {
    let b = BalancedBrackets("a(b{c}]")
    if (b.check_balanced_brackets() != false) {
        throw Exception("Test failed!")
    }
}

func test_check_balanced_brackets_6() {
    let b = BalancedBrackets("a(b{c]]")
    if (b.check_balanced_brackets() != false) {
        throw Exception("Test failed!")
    }
}

func test_check_balanced_brackets_7() {
    let b = BalancedBrackets("[a)(b){c}")
    if (b.check_balanced_brackets() != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_check_balanced_brackets()
    test_check_balanced_brackets_2()
    test_check_balanced_brackets_3()
    test_check_balanced_brackets_4()
    test_check_balanced_brackets_5()
    test_check_balanced_brackets_6()
    test_check_balanced_brackets_7()
}