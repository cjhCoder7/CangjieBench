import std.collection.ArrayList

main() {
    if (eat(5, 6, 10) != ArrayList<Int64>([11, 4])) {
        throw Exception("Test Failed!")
    }
    if (eat(4, 8, 9) != ArrayList<Int64>([12, 1])) {
        throw Exception("Test Failed!")
    }
    if (eat(1, 10, 10) != ArrayList<Int64>([11, 0])) {
        throw Exception("Test Failed!")
    }
    if (eat(2, 11, 5) != ArrayList<Int64>([7, 0])) {
        throw Exception("Test Failed!")
    }
    if (eat(4, 5, 7) != ArrayList<Int64>([9, 2])) {
        throw Exception("Test Failed!")
    }
    if (eat(4, 5, 1) != ArrayList<Int64>([5, 0])) {
        throw Exception("Test Failed!")
    }
}
