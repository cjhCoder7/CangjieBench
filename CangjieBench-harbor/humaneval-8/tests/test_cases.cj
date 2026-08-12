import std.collection.ArrayList

main(){
    if (sum_product(ArrayList<Int64>()) != (0, 1)) {
        throw Exception("Test Failed!")
    }
    if (sum_product(ArrayList<Int64>([1, 1, 1])) != (3, 1)) {
        throw Exception("Test Failed!")
    }
    if (sum_product(ArrayList<Int64>([100, 0])) != (100, 0)) {
        throw Exception("Test Failed!")
    }
    if (sum_product(ArrayList<Int64>([3, 5, 7])) != (3 + 5 + 7, 3 * 5 * 7)) {
        throw Exception("Test Failed!")
    }
    if (sum_product(ArrayList<Int64>([10])) != (10, 10)) {
        throw Exception("Test Failed!")
    }
}
