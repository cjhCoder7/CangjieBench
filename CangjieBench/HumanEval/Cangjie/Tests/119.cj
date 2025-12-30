
main() {
    if (match_parens(ArrayList<String>(["()(", ")"])) != "Yes") {
        throw Exception("Test Failed!")
    }
    if (match_parens(ArrayList<String>([")", ")"])) != "No") {
        throw Exception("Test Failed!")
    }
    if (match_parens(ArrayList<String>(["(()(())", "())())"])) != "No") {
        throw Exception("Test Failed!")
    }
    if (match_parens(ArrayList<String>([")())", "(()()("])) != "Yes") {
        throw Exception("Test Failed!")
    }
    if (match_parens(ArrayList<String>(["(())))", "(()())(("])) != "Yes") {
        throw Exception("Test Failed!")
    }
    if (match_parens(ArrayList<String>(["()", "())"])) != "No") {
        throw Exception("Test Failed!")
    }
    if (match_parens(ArrayList<String>(["(()(", "()))()"])) != "Yes") {
        throw Exception("Test Failed!")
    }
    if (match_parens(ArrayList<String>(["((((", "((())"])) != "No") {
        throw Exception("Test Failed!")
    }
    if (match_parens(ArrayList<String>([")(()", "(()("])) != "No") {
        throw Exception("Test Failed!")
    }
    if (match_parens(ArrayList<String>([")(", ")("])) != "No") {
        throw Exception("Test Failed!")
    }
    if (match_parens(ArrayList<String>(["(", ")"])) != "Yes") {
        throw Exception("Test Failed!")
    }
    if (match_parens(ArrayList<String>([")", "("])) != "Yes") {
        throw Exception("Test Failed!")
    }
}
