import std.collection.ArrayList
import std.collection.HashMap

main() {
    if (is_sorted(ArrayList<Int64>([5])) != true) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([1, 2, 3, 4, 5])) != true) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([1, 3, 2, 4, 5])) != false) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([1, 2, 3, 4, 5, 6])) != true) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7])) != true) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([1, 3, 2, 4, 5, 6, 7])) != false) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([])) != true) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([1])) != true) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([3, 2, 1])) != false) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([1, 2, 2, 2, 3, 4])) != false) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([1, 2, 3, 3, 3, 4])) != false) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([1, 2, 2, 3, 3, 4])) != true) {
        throw Exception("Test Failed!")
    }
    if (is_sorted(ArrayList<Int64>([1, 2, 3, 4])) != true) {
        throw Exception("Test Failed!")
    }
}
