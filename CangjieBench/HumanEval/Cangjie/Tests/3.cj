
main(){
    if (below_zero(ArrayList<Int64>([])) != false) {
        throw Exception("Test Failed!")
    }
    if (below_zero(ArrayList<Int64>([1, 2, -3, 1, 2, -3])) != false) {
        throw Exception("Test Failed!")
    }
    if (below_zero(ArrayList<Int64>([1, 2, -4, 5, 6])) != true) {
        throw Exception("Test Failed!")
    }
    if (below_zero(ArrayList<Int64>([1, -1, 2, -2, 5, -5, 4, -4])) != false) {
        throw Exception("Test Failed!")
    }
    if (below_zero(ArrayList<Int64>([1, -1, 2, -2, 5, -5, 4, -5])) != true) {
        throw Exception("Test Failed!")
    }
    if (below_zero(ArrayList<Int64>([1, -2, 2, -2, 5, -5, 4, -4])) != true) {
        throw Exception("Test Failed!")
    }
}