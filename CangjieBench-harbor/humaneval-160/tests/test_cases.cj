import std.collection.ArrayList

main() {
    if (do_algebra(ArrayList<String>(["**", "*", "+"]), ArrayList<Int64>([2, 3, 4, 5])) != 37) {
        throw Exception("Test Failed!")
    }
    if (do_algebra(ArrayList<String>(["+", "*", "-"]), ArrayList<Int64>([2, 3, 4, 5])) != 9) {
        throw Exception("Test Failed!")
    }
    if (do_algebra(ArrayList<String>(["//", "*"]), ArrayList<Int64>([7, 3, 4])) != 8) {
        throw Exception("Test Failed!")
    }
}
