
main(){
    if (make_a_pile(3) != ArrayList<Int64>([3, 5, 7])) {
        throw Exception("Test Failed!")
    }
    if (make_a_pile(4) != ArrayList<Int64>([4, 6, 8, 10])) {
        throw Exception("Test Failed!")
    }
    if (make_a_pile(5) != ArrayList<Int64>([5, 7, 9, 11, 13])) {
        throw Exception("Test Failed!")
    }
    if (make_a_pile(6) != ArrayList<Int64>([6, 8, 10, 12, 14, 16])) {
        throw Exception("Test Failed!")
    }
    if (make_a_pile(8) != ArrayList<Int64>([8, 10, 12, 14, 16, 18, 20, 22])) {
        throw Exception("Test Failed!")
    }
}