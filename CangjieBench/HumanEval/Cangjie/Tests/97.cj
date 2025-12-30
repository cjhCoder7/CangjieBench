
main(){
    if (multiply(148, 412) != 16) {
        throw Exception("Test Failed!")
    }
    if (multiply(19, 28) != 72) {
        throw Exception("Test Failed!")
    }
    if (multiply(2020, 1851) != 0) {
        throw Exception("Test Failed!")
    }
    if (multiply(14, -15) != 20) {
        throw Exception("Test Failed!")
    }
    if (multiply(76, 67) != 42) {
        throw Exception("Test Failed!")
    }
    if (multiply(17, 27) != 49) {
        throw Exception("Test Failed!")
    }
    if (multiply(0, 1) != 0) {
        throw Exception("Test Failed!")
    }
    if (multiply(0, 0) != 0) {
        throw Exception("Test Failed!")
    }
}