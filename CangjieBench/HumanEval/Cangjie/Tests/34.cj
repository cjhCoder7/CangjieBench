
main(){
    if (unique(ArrayList<Int64>([5, 3, 5, 2, 3, 3, 9, 0, 123])) != ArrayList<Int64>([0, 2, 3, 5, 9, 123])) {
        throw Exception("Test failed!")
    }
}