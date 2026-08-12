import std.collection.ArrayList
import std.sort.sort
import std.convert.Formattable

main() {
    if (sort_array(ArrayList<Int64>([1, 5, 2, 3, 4])) != ArrayList<Int64>([1, 2, 4, 3, 5])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([-2, -3, -4, -5, -6])) != ArrayList<Int64>([-4, -2, -6, -5, -3])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([1, 0, 2, 3, 4])) != ArrayList<Int64>([0, 1, 2, 4, 3])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([])) != ArrayList<Int64>([])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4])) != ArrayList<Int64>([2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([3, 6, 44, 12, 32, 5])) != ArrayList<Int64>([32, 3, 5, 6, 12, 44])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([2, 4, 8, 16, 32])) != ArrayList<Int64>([2, 4, 8, 16, 32])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([2, 4, 8, 16, 32])) != ArrayList<Int64>([2, 4, 8, 16, 32])) {
        throw Exception("Test Failed!")
    }
}
