import std.collection.ArrayList

main(){
    if (triples_sum_to_zero(ArrayList<Int64>([1, 3, 5, 0])) != false) {
        throw Exception("Test Failed!")
    }
    if (triples_sum_to_zero(ArrayList<Int64>([1, 3, 5, -1])) != false) {
        throw Exception("Test Failed!")
    }
    if (triples_sum_to_zero(ArrayList<Int64>([1, 3, -2, 1])) != true) {
        throw Exception("Test Failed!")
    }
    if (triples_sum_to_zero(ArrayList<Int64>([1, 2, 3, 7])) != false) {
        throw Exception("Test Failed!")
    }
    if (triples_sum_to_zero(ArrayList<Int64>([1, 2, 5, 7])) != false) {
        throw Exception("Test Failed!")
    }
    if (triples_sum_to_zero(ArrayList<Int64>([2, 4, -5, 3, 9, 7])) != true) {
        throw Exception("Test Failed!")
    }
    if (triples_sum_to_zero(ArrayList<Int64>([1])) != false) {
        throw Exception("Test Failed!")
    }
    if (triples_sum_to_zero(ArrayList<Int64>([1, 3, 5, -100])) != false) {
        throw Exception("Test Failed!")
    }
    if (triples_sum_to_zero(ArrayList<Int64>([100, 3, 5, -100])) != false) {
        throw Exception("Test Failed!")
    }
}
