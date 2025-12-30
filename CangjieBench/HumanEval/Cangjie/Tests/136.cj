
main() {
    if (largest_smallest_integers(ArrayList<Int64>([2, 4, 1, 3, 5, 7])) != (Option<Int64>.None, 1)) {
        throw Exception("Test Failed!")
    }
    if (largest_smallest_integers(ArrayList<Int64>([2, 4, 1, 3, 5, 7, 0])) != (Option<Int64>.None, 1)) {
        throw Exception("Test Failed!")
    }
    if (largest_smallest_integers(ArrayList<Int64>([1, 3, 2, 4, 5, 6, -2])) != (-2, 1)) {
        throw Exception("Test Failed!")
    }
    if (largest_smallest_integers(ArrayList<Int64>([4, 5, 3, 6, 2, 7, -7])) != (-7, 2)) {
        throw Exception("Test Failed!")
    }
    if (largest_smallest_integers(ArrayList<Int64>([7, 3, 8, 4, 9, 2, 5, -9])) != (-9, 2)) {
        throw Exception("Test Failed!")
    }
    if (largest_smallest_integers(ArrayList<Int64>([])) != (Option<Int64>.None, Option<Int64>.None)) {
        throw Exception("Test Failed!")
    }
    if (largest_smallest_integers(ArrayList<Int64>([0])) != (Option<Int64>.None, Option<Int64>.None)) {
        throw Exception("Test Failed!")
    }
    if (largest_smallest_integers(ArrayList<Int64>([-1, -3, -5, -6])) != (-1, Option<Int64>.None)) {
        throw Exception("Test Failed!")
    }
    if (largest_smallest_integers(ArrayList<Int64>([-1, -3, -5, -6, 0])) != (-1, Option<Int64>.None)) {
        throw Exception("Test Failed!")
    }
    if (largest_smallest_integers(ArrayList<Int64>([-6, -4, -4, -3, 1])) != (-3, 1)) {
        throw Exception("Test Failed!")
    }
    if (largest_smallest_integers(ArrayList<Int64>([-6, -4, -4, -3, -100, 1])) != (-3, 1)) {
        throw Exception("Test Failed!")
    }
}
