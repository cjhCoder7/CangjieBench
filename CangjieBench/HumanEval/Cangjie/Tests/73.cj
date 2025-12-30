
main(){
    if (smallest_change(ArrayList<Int64>([1, 2, 3, 5, 4, 7, 9, 6])) != 4) {
        throw Exception("Test Failed!")
    }
    if (smallest_change(ArrayList<Int64>([1, 2, 3, 4, 3, 2, 2])) != 1) {
        throw Exception("Test Failed!")
    }
    if (smallest_change(ArrayList<Int64>([1, 4, 2])) != 1) {
        throw Exception("Test Failed!")
    }
    if (smallest_change(ArrayList<Int64>([1, 4, 4, 2])) != 1) {
        throw Exception("Test Failed!")
    }
    if (smallest_change(ArrayList<Int64>([1, 2, 3, 2, 1])) != 0) {
        throw Exception("Test Failed!")
    }
    if (smallest_change(ArrayList<Int64>([3, 1, 1, 3])) != 0) {
        throw Exception("Test Failed!")
    }
    if (smallest_change(ArrayList<Int64>([1])) != 0) {
        throw Exception("Test Failed!")
    }
    if (smallest_change(ArrayList<Int64>([0, 1])) != 1) {
        throw Exception("Test Failed!")
    }
}