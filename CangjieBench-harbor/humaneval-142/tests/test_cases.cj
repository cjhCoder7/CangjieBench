import std.collection.ArrayList

main() {
    if (sum_squares(ArrayList<Int64>([1, 2, 3])) != 6) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Int64>([1, 4, 9])) != 14) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Int64>([])) != 0) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Int64>([1, 1, 1, 1, 1, 1, 1, 1, 1])) != 9) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Int64>([-1, -1, -1, -1, -1, -1, -1, -1, -1])) != -3) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Int64>([0])) != 0) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Int64>([-1, -5, 2, -1, -5])) != -126) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Int64>([-56, -99, 1, 0, -2])) != 3030) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Int64>([-1, 0, 0, 0, 0, 0, 0, 0, -1])) != 0) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Int64>([-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37])) != -14196) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Int64>([-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10])) != -1448) {
        throw Exception("Test Failed!")
    }
}
