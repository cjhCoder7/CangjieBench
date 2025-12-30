
main(){
    if (fib4(5) != 4) {
        throw Exception("Test Failed!")
    }
    if (fib4(8) != 28) {
        throw Exception("Test Failed!")
    }
    if (fib4(10) != 104) {
        throw Exception("Test Failed!")
    }
    if (fib4(12) != 386) {
        throw Exception("Test Failed!")
    }
}