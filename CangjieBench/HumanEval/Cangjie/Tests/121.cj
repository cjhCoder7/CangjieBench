
main() {
    if (solution(ArrayList<Int64>([5, 8, 7, 1])) != 12) {
        throw Exception("Test Failed!")
    }
    if (solution(ArrayList<Int64>([3, 3, 3, 3, 3])) != 9) {
        throw Exception("Test Failed!")
    }
    if (solution(ArrayList<Int64>([30, 13, 24, 321])) != 0) {
        throw Exception("Test Failed!")
    }
    if (solution(ArrayList<Int64>([5, 9])) != 5) {
        throw Exception("Test Failed!")
    }
    if (solution(ArrayList<Int64>([2, 4, 8])) != 0) {
        throw Exception("Test Failed!")
    }
    if (solution(ArrayList<Int64>([30, 13, 23, 32])) != 23) {
        throw Exception("Test Failed!")
    }
    if (solution(ArrayList<Int64>([3, 13, 2, 9])) != 3) {
        throw Exception("Test Failed!")
    }
}
