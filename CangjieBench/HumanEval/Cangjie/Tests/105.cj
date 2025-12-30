
main() {
    if (by_length(ArrayList<Int64>([2, 1, 1, 4, 5, 8, 2, 3])) != ArrayList<String>(["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"])) {
        throw Exception("Error")
    }
    if (by_length(ArrayList<Int64>([])) != ArrayList<String>([])) {
        throw Exception("Error")
    }
    if (by_length(ArrayList<Int64>([1, -1, 55])) != ArrayList<String>(["One"])) {
        throw Exception("Error")
    }
    if (by_length(ArrayList<Int64>([1, -1, 3, 2])) != ArrayList<String>(["Three", "Two", "One"])) {
        throw Exception("Error")
    }
    if (by_length(ArrayList<Int64>([9, 4, 8])) != ArrayList<String>(["Nine", "Eight", "Four"])) {
        throw Exception("Error")
    }
}