
main(){
    if (derivative(ArrayList<Int64>([3, 1, 2, 4, 5])) != ArrayList<Int64>([1, 4, 12, 20])) {
        throw Exception("Test Failed!")
    }
    if (derivative(ArrayList<Int64>([1, 2, 3])) != ArrayList<Int64>([2, 6])) {
        throw Exception("Test Failed!")
    }
    if (derivative(ArrayList<Int64>([3, 2, 1])) != ArrayList<Int64>([2, 2])) {
        throw Exception("Test Failed!")
    }
    if (derivative(ArrayList<Int64>([3, 2, 1, 0, 4])) != ArrayList<Int64>([2, 2, 0, 16])) {
        throw Exception("Test Failed!")
    }
    if (derivative(ArrayList<Int64>([1])) != ArrayList<Int64>([])) {
        throw Exception("Test Failed!")
    }
}