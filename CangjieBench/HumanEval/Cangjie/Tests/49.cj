
main(){
    if (modp(3, 5) != 3) {
        throw Exception("Test Failed!")
    }
    if (modp(1101, 101) != 2) {
        throw Exception("Test Failed!")
    }
    if (modp(0, 101) != 1) {
        throw Exception("Test Failed!")
    }
    if (modp(3, 11) != 8) {
        throw Exception("Test Failed!")
    }
    if (modp(100, 101) != 1) {
        throw Exception("Test Failed!")
    }
    if (modp(30, 5) != 4) {
        throw Exception("Test Failed!")
    }
    if (modp(31, 5) != 3) {
        throw Exception("Test Failed!")
    }
}