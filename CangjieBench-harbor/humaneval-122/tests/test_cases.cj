import std.collection.ArrayList

main() {
    if (add_elements(ArrayList<Int64>([1, -2, -3, 41, 57, 76, 87, 88, 99]), 3) != -4) {
        throw Exception("Test Failed!")
    }
    if (add_elements(ArrayList<Int64>([111, 121, 3, 4000, 5, 6]), 2) != 0) {
        throw Exception("Test Failed!")
    }
    if (add_elements(ArrayList<Int64>([11, 21, 3, 90, 5, 6, 7, 8, 9]), 4) != 125) {
        throw Exception("Test Failed!")
    }
    if (add_elements(ArrayList<Int64>([111, 21, 3, 4000, 5, 6, 7, 8, 9]), 4) != 24) {
        throw Exception("Test Failed!")
    }
    if (add_elements(ArrayList<Int64>([1]), 1) != 1) {
        throw Exception("Test Failed!")
    }
}
