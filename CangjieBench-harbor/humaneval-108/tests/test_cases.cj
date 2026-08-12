import std.collection.ArrayList

main() {
    if (count_nums(ArrayList<Int64>([])) != 0) {
        throw Exception("Test Failed!")
    }
    if (count_nums(ArrayList<Int64>([-1, -2, 0])) != 0) {
        throw Exception("Test Failed!")
    }
    if (count_nums(ArrayList<Int64>([1, 1, 2, -2, 3, 4, 5])) != 6) {
        throw Exception("Test Failed!")
    }
    if (count_nums(ArrayList<Int64>([1, 6, 9, -6, 0, 1, 5])) != 5) {
        throw Exception("Test Failed!")
    }
    if (count_nums(ArrayList<Int64>([1, 100, 98, -7, 1, -1])) != 4) {
        throw Exception("Test Failed!")
    }
    if (count_nums(ArrayList<Int64>([12, 23, 34, -45, -56, 0])) != 5) {
        throw Exception("Test Failed!")
    }
    if (count_nums(ArrayList<Int64>([0, 1**0])) != 1) {
        throw Exception("Test Failed!")
    }
    if (count_nums(ArrayList<Int64>([1])) != 1) {
        throw Exception("Test Failed!")
    }
}
