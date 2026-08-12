main(){
    if (fibfib(2) != 1) {
        throw Exception("Test Failed!")
    }
    if (fibfib(1) != 0) {
        throw Exception("Test Failed!")
    }
    if (fibfib(5) != 4) {
        throw Exception("Test Failed!")
    }
    if (fibfib(8) != 24) {
        throw Exception("Test Failed!")
    }
    if (fibfib(10) != 81) {
        throw Exception("Test Failed!")
    }
    if (fibfib(12) != 274) {
        throw Exception("Test Failed!")
    }
    if (fibfib(14) != 927) {
        throw Exception("Test Failed!")
    }
}
