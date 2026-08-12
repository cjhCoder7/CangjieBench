import std.collection.ArrayList

func test_main() {
    let b = BalancedBrackets("a(b)c")
    b.clear_expr()
    if (b.expr != "()") {
        throw Exception("Test failed!")
    }
    if (b.check_balanced_brackets() != true) {
        throw Exception("Test failed!")
    }
}

func test_main_2() {
    let b = BalancedBrackets("[a(b){c}")
    b.clear_expr()
    if (b.expr != "[(){}") {
        throw Exception("Test failed!")
    }
    if (b.check_balanced_brackets() != false) {
        throw Exception("Test failed!")
    }
}

func test_main_3() {
    let b = BalancedBrackets("a(b{c}]")
    b.clear_expr()
    if (b.expr != "({}]") {
        throw Exception("Test failed!")
    }
    if (b.check_balanced_brackets() != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
    test_main_2()
    test_main_3()
}
