import std.collection.ArrayList

main(){
    if (pairs_sum_to_zero(ArrayList<Int64>([1, 3, 5, 0])) != false) {
        throw Exception("Test Failed!")
    }
    if (pairs_sum_to_zero(ArrayList<Int64>([1, 3, -2, 1])) != false) {
        throw Exception("Test Failed!")
    }
    if (pairs_sum_to_zero(ArrayList<Int64>([1, 2, 3, 7])) != false) {
        throw Exception("Test Failed!")
    }
    if (pairs_sum_to_zero(ArrayList<Int64>([2, 4, -5, 3, 5, 7])) != true) {
        throw Exception("Test Failed!")
    }
    if (pairs_sum_to_zero(ArrayList<Int64>([1])) != false) {
        throw Exception("Test Failed!")
    }

    if (pairs_sum_to_zero(ArrayList<Int64>([-3, 9, -1, 3, 2, 30])) != true) {
        throw Exception("Test Failed!")
    }
    if (pairs_sum_to_zero(ArrayList<Int64>([-3, 9, -1, 3, 2, 31])) != true) {
        throw Exception("Test Failed!")
    }
    if (pairs_sum_to_zero(ArrayList<Int64>([-3, 9, -1, 4, 2, 30])) != false) {
        throw Exception("Test Failed!")
    }
    if (pairs_sum_to_zero(ArrayList<Int64>([-3, 9, -1, 4, 2, 31])) != false) {
        throw Exception("Test Failed!")
    }
}
