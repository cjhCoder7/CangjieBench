
main() {
    if (f(5) != ArrayList<Int64>([1, 2, 6, 24, 15])) {
        throw Exception("Test Failed!")
    }
    if (f(7) != ArrayList<Int64>([1, 2, 6, 24, 15, 720, 28])) {
        throw Exception("Test Failed!")
    }
    if (f(1) != ArrayList<Int64>([1])) {
        throw Exception("Test Failed!")
    }
    if (f(3) != ArrayList<Int64>([1, 2, 6])) {
        throw Exception("Test Failed!")
    }
}
