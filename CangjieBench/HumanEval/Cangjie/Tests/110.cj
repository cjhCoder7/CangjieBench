
main() {
    if (exchange(ArrayList<Int64>([1, 2, 3, 4]), ArrayList<Int64>([1, 2, 3, 4])) != "YES") {
        throw Exception("Test Failed!")
    }
    if (exchange(ArrayList<Int64>([1, 2, 3, 4]), ArrayList<Int64>([1, 5, 3, 4])) != "NO") {
        throw Exception("Test Failed!")
    }
    if (exchange(ArrayList<Int64>([1, 2, 3, 4]), ArrayList<Int64>([2, 1, 4, 3])) != "YES") {
        throw Exception("Test Failed!")
    }
    if (exchange(ArrayList<Int64>([5, 7, 3]), ArrayList<Int64>([2, 6, 4])) != "YES") {
        throw Exception("Test Failed!")
    }
    if (exchange(ArrayList<Int64>([5, 7, 3]), ArrayList<Int64>([2, 6, 3])) != "NO") {
        throw Exception("Test Failed!")
    }
    if (exchange(ArrayList<Int64>([3, 2, 6, 1, 8, 9]), ArrayList<Int64>([3, 5, 5, 1, 1, 1])) != "NO") {
        throw Exception("Test Failed!")
    }
    if (exchange(ArrayList<Int64>([100, 200]), ArrayList<Int64>([200, 200])) != "YES") {
        throw Exception("Test Failed!")
    }
}
