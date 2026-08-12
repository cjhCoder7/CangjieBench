import std.collection.ArrayList
import std.sort.sort

main(){
    if (sort_even(ArrayList<Int64>([1, 2, 3])) != ArrayList<Int64>([1, 2, 3])) {
        throw Exception("Test failed!")
    }
    if (sort_even(ArrayList<Int64>([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])) != ArrayList<Int64>([-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])) {
        throw Exception("Test failed!")
    }
    if (sort_even(ArrayList<Int64>([5, 8, -12, 4, 23, 2, 3, 11, 12, -10])) != ArrayList<Int64>([-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])) {
        throw Exception("Test failed!")
    }
}
