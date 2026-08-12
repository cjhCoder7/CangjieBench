import std.collection.ArrayList

main() {
    if (minPath(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6]), ArrayList<Int64>([7, 8, 9])]), 3) != ArrayList<Int64>([1, 2, 1])) {
        throw Exception("Test Failed!")
    }
    if (minPath(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([5, 9, 3]), ArrayList<Int64>([4, 1, 6]), ArrayList<Int64>([7, 8, 2])]), 1) != ArrayList<Int64>([1])) {
        throw Exception("Test Failed!")
    }
    if (minPath(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3, 4]), ArrayList<Int64>([5, 6, 7, 8]), ArrayList<Int64>([9, 10, 11, 12]), ArrayList<Int64>([13, 14, 15, 16])]), 4) != ArrayList<Int64>([1, 2, 1, 2])) {
        throw Exception("Test Failed!")
    }
    if (minPath(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([6, 4, 13, 10]), ArrayList<Int64>([5, 7, 12, 1]), ArrayList<Int64>([3, 16, 11, 15]), ArrayList<Int64>([8, 14, 9, 2])]), 7) != ArrayList<Int64>([1, 10, 1, 10, 1, 10, 1])) {
        throw Exception("Test Failed!")
    }
    if (minPath(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([8, 14, 9, 2]), ArrayList<Int64>([6, 4, 13, 15]), ArrayList<Int64>([5, 7, 1, 12]), ArrayList<Int64>([3, 10, 11, 16])]), 5) != ArrayList<Int64>([1, 7, 1, 7, 1])) {
        throw Exception("Test Failed!")
    }
    if (minPath(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([11, 8, 7, 2]), ArrayList<Int64>([5, 16, 14, 4]), ArrayList<Int64>([9, 3, 15, 6]), ArrayList<Int64>([12, 13, 10, 1])]), 9) != ArrayList<Int64>([1, 6, 1, 6, 1, 6, 1, 6, 1])) {
        throw Exception("Test Failed!")
    }
    if (minPath(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([12, 13, 10, 1]), ArrayList<Int64>([9, 3, 15, 6]), ArrayList<Int64>([5, 16, 14, 4]), ArrayList<Int64>([11, 8, 7, 2])]), 12) != ArrayList<Int64>([1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6])) {
        throw Exception("Test Failed!")
    }
    if (minPath(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([2, 7, 4]), ArrayList<Int64>([3, 1, 5]), ArrayList<Int64>([6, 8, 9])]), 8) != ArrayList<Int64>([1, 3, 1, 3, 1, 3, 1, 3])) {
        throw Exception("Test Failed!")
    }
    if (minPath(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([6, 1, 5]), ArrayList<Int64>([3, 8, 9]), ArrayList<Int64>([2, 7, 4])]), 8) != ArrayList<Int64>([1, 5, 1, 5, 1, 5, 1, 5])) {
        throw Exception("Test Failed!")
    }
    if (minPath(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2]), ArrayList<Int64>([3, 4])]), 10) != ArrayList<Int64>([1, 2, 1, 2, 1, 2, 1, 2, 1, 2])) {
        throw Exception("Test Failed!")
    }
    if (minPath(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 3]), ArrayList<Int64>([3, 2])]), 10) != ArrayList<Int64>([1, 3, 1, 3, 1, 3, 1, 3, 1, 3])) {
        throw Exception("Test Failed!")
    }
}
