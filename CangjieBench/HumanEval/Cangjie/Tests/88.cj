
main(){
    if (sort_array(ArrayList<Int64>([])) != ArrayList<Int64>([])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([5])) != ArrayList<Int64>([5])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([2, 4, 3, 0, 1, 5])) != ArrayList<Int64>([0, 1, 2, 3, 4, 5])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([2, 4, 3, 0, 1, 5, 6])) != ArrayList<Int64>([6, 5, 4, 3, 2, 1, 0])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([2, 1])) != ArrayList<Int64>([1, 2])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([15, 42, 87, 32, 11, 0])) != ArrayList<Int64>([0, 11, 15, 32, 42, 87])) {
        throw Exception("Test Failed!")
    }
    if (sort_array(ArrayList<Int64>([21, 14, 23, 11])) != ArrayList<Int64>([23, 21, 14, 11])) {
        throw Exception("Test Failed!")
    }
}