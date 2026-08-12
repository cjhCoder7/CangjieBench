main(){
    if (sum_to_n(1) != 1) {
        throw Exception("Test Failed!")
    }
    if (sum_to_n(6) != 21) {
        throw Exception("Test Failed!")
    }
    if (sum_to_n(11) != 66) {
        throw Exception("Test Failed!")
    }
    if (sum_to_n(30) != 465) {
        throw Exception("Test Failed!")
    }
    if (sum_to_n(100) != 5050) {
        throw Exception("Test Failed!")
    }
}
