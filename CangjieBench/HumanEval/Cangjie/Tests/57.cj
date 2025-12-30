
main(){
    if (monotonic(ArrayList<Int64>([1, 2, 4, 10])) != true) {
        throw Exception("Test Failed!")
    }
    if (monotonic(ArrayList<Int64>([1, 2, 4, 20])) != true) {
        throw Exception("Test Failed!")
    }
    if (monotonic(ArrayList<Int64>([1, 20, 4, 10])) != false) {
        throw Exception("Test Failed!")
    }
    if (monotonic(ArrayList<Int64>([4, 1, 0, -10])) != true) {
        throw Exception("Test Failed!")
    }
    if (monotonic(ArrayList<Int64>([4, 1, 1, 0])) != true) {
        throw Exception("Test Failed!")
    }
    if (monotonic(ArrayList<Int64>([1, 2, 3, 2, 5, 60])) != false) {
        throw Exception("Test Failed!")
    }
    if (monotonic(ArrayList<Int64>([1, 2, 3, 4, 5, 60])) != true) {
        throw Exception("Test Failed!")
    }
    if (monotonic(ArrayList<Int64>([9, 9, 9, 9])) != true) {
        throw Exception("Test Failed!")
    }
}