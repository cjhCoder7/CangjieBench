
main(){
    if (common(ArrayList<Int64>([1, 4, 3, 34, 653, 2, 5]), ArrayList<Int64>([5, 7, 1, 5, 9, 653, 121])) != ArrayList<Int64>([1, 5, 653])) {
        throw Exception("Test Failed!")
    }
    if (common(ArrayList<Int64>([5, 3, 2, 8]), ArrayList<Int64>([3, 2])) != ArrayList<Int64>([2, 3])) {
        throw Exception("Test Failed!")
    }
    if (common(ArrayList<Int64>([4, 3, 2, 8]), ArrayList<Int64>([3, 2, 4])) != ArrayList<Int64>([2, 3, 4])) {
        throw Exception("Test Failed!")
    }
    if (common(ArrayList<Int64>([4, 3, 2, 8]), ArrayList<Int64>([])) != ArrayList<Int64>([])) {
        throw Exception("Test Failed!")
    }
}