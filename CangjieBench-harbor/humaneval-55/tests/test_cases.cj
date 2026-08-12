main(){
    if (fib(10) != 55) {
        throw Exception("Test Failed!")
    }
    if (fib(1) != 1) {
        throw Exception("Test Failed!")
    }
    if (fib(8) != 21) {
        throw Exception("Test Failed!")
    }
    if (fib(11) != 89) {
        throw Exception("Test Failed!")
    }
    if (fib(12) != 144) {
        throw Exception("Test Failed!")
    }
}
