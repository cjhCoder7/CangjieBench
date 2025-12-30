
main(){
    if (max_element(ArrayList<Int64>([1, 2, 3])) != 3) {
        throw Exception("Test failed!")
    }
    if (max_element(ArrayList<Int64>([5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10])) != 124) {
        throw Exception("Test failed!")
    }
}
