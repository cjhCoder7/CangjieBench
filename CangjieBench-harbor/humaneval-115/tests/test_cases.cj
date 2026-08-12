import std.collection.ArrayList
import std.math.ceil

main() {
    if (max_fill(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0, 1, 0]), ArrayList<Int64>([0, 1, 0, 0]), ArrayList<Int64>([1, 1, 1, 1])]), 1) != 6) {
        throw Exception("Test Failed!")
    }
    if (max_fill(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0, 1, 1]), ArrayList<Int64>([0, 0, 0, 0]), ArrayList<Int64>([1, 1, 1, 1]), ArrayList<Int64>([0, 1, 1, 1])]), 2) != 5) {
        throw Exception("Test Failed!")
    }
    if (max_fill(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0, 0]), ArrayList<Int64>([0, 0, 0])]), 5) != 0) {
        throw Exception("Test Failed!")
    }
    if (max_fill(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 1, 1, 1]), ArrayList<Int64>([1, 1, 1, 1])]), 2) != 4) {
        throw Exception("Test Failed!")
    }
    if (max_fill(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 1, 1, 1]), ArrayList<Int64>([1, 1, 1, 1])]), 9) != 2) {
        throw Exception("Test Failed!")
    }
}
