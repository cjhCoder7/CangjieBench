
main() {
    if (unique_digits(ArrayList<Int64>([15, 33, 1422, 1])) != ArrayList<Int64>([1, 15, 33])) {
        throw Exception("Test Failed!")
    }
    if (unique_digits(ArrayList<Int64>([152, 323, 1422, 10])) != ArrayList<Int64>([])) {
        throw Exception("Test Failed!")
    }
    if (unique_digits(ArrayList<Int64>([12345, 2033, 111, 151])) != ArrayList<Int64>([111, 151])) {
        throw Exception("Test Failed!")
    }
    if (unique_digits(ArrayList<Int64>([135, 103, 31])) != ArrayList<Int64>([31, 135])) {
        throw Exception("Test Failed!")
    }
}