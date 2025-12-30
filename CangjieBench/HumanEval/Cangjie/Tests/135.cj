
main() {
    if (can_arrange(ArrayList<Int64>([1, 2, 4, 3, 5])) != 3) {
        throw Exception("Test Failed!")
    }
    if (can_arrange(ArrayList<Int64>([1, 2, 4, 5])) != -1) {
        throw Exception("Test Failed!")
    }
    if (can_arrange(ArrayList<Int64>([1, 4, 2, 5, 6, 7, 8, 9, 10])) != 2) {
        throw Exception("Test Failed!")
    }
    if (can_arrange(ArrayList<Int64>([4, 8, 5, 7, 3])) != 4) {
        throw Exception("Test Failed!")
    }
    if (can_arrange(ArrayList<Int64>([])) != -1) {
        throw Exception("Test Failed!")
    }
}
