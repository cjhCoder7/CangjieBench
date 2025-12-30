func test_clear_expr() {
    let b = BalancedBrackets("a(b)c")
    b.clear_expr()
    if (b.expr != "()") {
        throw Exception("Test failed!")
    }
}

func test_clear_expr_2() {
    let b = BalancedBrackets("a(b){c}")
    b.clear_expr()
    if (b.expr != "(){}") {
        throw Exception("Test failed!")
    }
}

func test_clear_expr_3() {
    let b = BalancedBrackets("[a](b){c}")
    b.clear_expr()
    if (b.expr != "[](){}") {
        throw Exception("Test failed!")
    }
}

func test_clear_expr_4() {
    let b = BalancedBrackets("[a(b){c}")
    b.clear_expr()
    if (b.expr != "[(){}") {
        throw Exception("Test failed!")
    }
}

func test_clear_expr_5() {
    let b = BalancedBrackets("a(b){c}]")
    b.clear_expr()
    if (b.expr != "(){}]") {
        throw Exception("Test failed!")
    }
}

main() {
    test_clear_expr()
    test_clear_expr_2()
    test_clear_expr_3()
    test_clear_expr_4()
    test_clear_expr_5()
}