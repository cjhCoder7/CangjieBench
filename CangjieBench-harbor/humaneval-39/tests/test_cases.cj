import std.collection.ArrayList
import std.math.sqrt

main(){
    if (prime_fib(1) != 2) {
        throw Exception("Test Failed!")
    }
    if (prime_fib(2) != 3) {
        throw Exception("Test Failed!")
    }
    if (prime_fib(3) != 5) {
        throw Exception("Test Failed!")
    }
    if (prime_fib(4) != 13) {
        throw Exception("Test Failed!")
    }
    if (prime_fib(5) != 89) {
        throw Exception("Test Failed!")
    }
    if (prime_fib(6) != 233) {
        throw Exception("Test Failed!")
    }
    if (prime_fib(7) != 1597) {
        throw Exception("Test Failed!")
    }
    if (prime_fib(8) != 28657) {
        throw Exception("Test Failed!")
    }
    if (prime_fib(9) != 514229) {
        throw Exception("Test Failed!")
    }
    if (prime_fib(10) != 433494437) {
        throw Exception("Test Failed!")
    }
}
