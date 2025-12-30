
main(){
    if (next_smallest(ArrayList<Int64>([1, 2, 3, 4, 5])) != 2) {
        throw Exception("Test Failed!")
    }
    if (next_smallest(ArrayList<Int64>([5, 1, 4, 3, 2])) != 2) {
        throw Exception("Test Failed!")
    }
    if (next_smallest(ArrayList<Int64>([])) != None) {
        throw Exception("Test Failed!")
    }
    if (next_smallest(ArrayList<Int64>([1, 1])) != None) {
        throw Exception("Test Failed!")
    }
    if (next_smallest(ArrayList<Int64>([1, 1, 1, 1, 0])) != 1) {
        throw Exception("Test Failed!")
    }
    if (next_smallest(ArrayList<Int64>([1, 0**0])) != None) {
        throw Exception("Test Failed!")
    }
    if (next_smallest(ArrayList<Int64>([-35, 34, 12, -45])) != -35) {
        throw Exception("Test Failed!")
    }
}
