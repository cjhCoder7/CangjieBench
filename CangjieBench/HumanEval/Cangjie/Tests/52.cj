
main(){
    if (below_threshold(ArrayList<Int64>([1, 2, 4, 10]), 100) != true) {
        throw Exception("Test Failed!")
    }
    if (below_threshold(ArrayList<Int64>([1, 20, 4, 10]), 5) != false) {
        throw Exception("Test Failed!")
    }
    if (below_threshold(ArrayList<Int64>([1, 20, 4, 10]), 21) != true) {
        throw Exception("Test Failed!")
    }
    if (below_threshold(ArrayList<Int64>([1, 20, 4, 10]), 22) != true) {
        throw Exception("Test Failed!")
    }
    if (below_threshold(ArrayList<Int64>([1, 8, 4, 10]), 11) != true) {
        throw Exception("Test Failed!")
    }
    if (below_threshold(ArrayList<Int64>([1, 8, 4, 10]), 10) != false) {
        throw Exception("Test Failed!")
    }
}