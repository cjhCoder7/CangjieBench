import std.collection.ArrayList

main() {
    if (tri(3) != ArrayList<Int64>([1, 3, 2, 8])) {
        throw Exception("Test Failed!")
    }
    if (tri(4) != ArrayList<Int64>([1, 3, 2, 8, 3])) {
        throw Exception("Test Failed!")
    }
    if (tri(5) != ArrayList<Int64>([1, 3, 2, 8, 3, 15])) {
        throw Exception("Test Failed!")
    }
    if (tri(6) != ArrayList<Int64>([1, 3, 2, 8, 3, 15, 4])) {
        throw Exception("Test Failed!")
    }
    if (tri(7) != ArrayList<Int64>([1, 3, 2, 8, 3, 15, 4, 24])) {
        throw Exception("Test Failed!")
    }
    if (tri(8) != ArrayList<Int64>([1, 3, 2, 8, 3, 15, 4, 24, 5])) {
        throw Exception("Test Failed!")
    }
    if (tri(9) != ArrayList<Int64>([1, 3, 2, 8, 3, 15, 4, 24, 5, 35])) {
        throw Exception("Test Failed!")
    }
    if (tri(20) != ArrayList<Int64>([1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])) {
        throw Exception("Test Failed!")
    }
    if (tri(0) != ArrayList<Int64>([1])) {
        throw Exception("Test Failed!")
    }
    if (tri(1) != ArrayList<Int64>([1, 3])) {
        throw Exception("Test Failed!")
    }
}
