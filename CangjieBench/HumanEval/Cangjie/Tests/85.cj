
main(){
    if (add(ArrayList<Int64>([4, 88])) != 88) {
        throw Exception("Test Failed!")
    }
    if (add(ArrayList<Int64>([4, 5, 6, 7, 2, 122])) != 122) {
        throw Exception("Test Failed!")
    }
    if (add(ArrayList<Int64>([4, 0, 6, 7])) != 0) {
        throw Exception("Test Failed!")
    }
    if (add(ArrayList<Int64>([4, 4, 6, 8])) != 12) {
        throw Exception("Test Failed!")
    }
}