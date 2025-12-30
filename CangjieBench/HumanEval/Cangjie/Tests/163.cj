
main() {
    if (generate_integers(2, 10) != ArrayList<Int64>([2, 4, 6, 8])) {
        throw Exception("Test Failed!")
    }
    if (generate_integers(10, 2) != ArrayList<Int64>([2, 4, 6, 8])) {
        throw Exception("Test Failed!")
    }
    if (generate_integers(132, 2) != ArrayList<Int64>([2, 4, 6, 8])) {
        throw Exception("Test Failed!")
    }
    if (generate_integers(17, 89) != ArrayList<Int64>([])) {
        throw Exception("Test Failed!")
    }
}
