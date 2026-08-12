import std.collection.ArrayList

main(){
    if (parse_nested_parens('(()()) ((())) () ((())()())') != ArrayList<Int64>([2, 3, 1, 3])) {
        throw Exception("Test Failed!")
    }
    if (parse_nested_parens('() (()) ((())) (((())))') != ArrayList<Int64>([1, 2, 3, 4])) {
        throw Exception("Test Failed!")
    }
    if (parse_nested_parens('(()(())((())))') != ArrayList<Int64>([4])) {
        throw Exception("Test Failed!")
    }
}
