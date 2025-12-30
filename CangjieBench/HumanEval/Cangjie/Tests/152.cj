
main() {
    if (compare(ArrayList<Int64>([1, 2, 3, 4, 5, 1]), ArrayList<Int64>([1, 2, 3, 4, 2, -2])) != ArrayList<Int64>([0, 0, 0, 0, 3, 3])) {
        throw Exception("Test Failed!")
    }
    if (compare(ArrayList<Int64>([0, 0, 0, 0, 0, 0]), ArrayList<Int64>([0, 0, 0, 0, 0, 0])) != ArrayList<Int64>([0, 0, 0, 0, 0, 0])) {
        throw Exception("Test Failed!")
    }
    if (compare(ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([-1, -2, -3])) != ArrayList<Int64>([2, 4, 6])) {
        throw Exception("Test Failed!")
    }
    if (compare(ArrayList<Int64>([1, 2, 3, 5]), ArrayList<Int64>([-1, 2, 3, 4])) != ArrayList<Int64>([2, 0, 0, 1])) {
        throw Exception("Test Failed!")
    }
}
