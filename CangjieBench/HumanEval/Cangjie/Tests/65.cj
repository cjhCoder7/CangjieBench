
main(){
    if (circular_shift(100, 2) != "001") {
        throw Exception("Test Failed!")
    }
    if (circular_shift(12, 2) != "12") {
        throw Exception("Test Failed!")
    }
    if (circular_shift(97, 8) != "79") {
        throw Exception("Test Failed!")
    }
    if (circular_shift(12, 1) != "21") {
        throw Exception("Test Failed!")
    }
    if (circular_shift(11, 101) != "11") {
        throw Exception("Test Failed!")
    }
}