main(){
    if (is_multiply_prime(5) != false) {
        throw Exception("Test Failed!")
    }
    if (is_multiply_prime(30) != true) {
        throw Exception("Test Failed!")
    }
    if (is_multiply_prime(8) != true) {
        throw Exception("Test Failed!")
    }
    if (is_multiply_prime(10) != false) {
        throw Exception("Test Failed!")
    }
    if (is_multiply_prime(125) != true) {
        throw Exception("Test Failed!")
    }
    if (is_multiply_prime(3 * 5 * 7) != true) {
        throw Exception("Test Failed!")
    }
    if (is_multiply_prime(3 * 6 * 7) != false) {
        throw Exception("Test Failed!")
    }
    if (is_multiply_prime(9 * 9 * 9) != false) {
        throw Exception("Test Failed!")
    }
    if (is_multiply_prime(11 * 9 * 9) != false) {
        throw Exception("Test Failed!")
    }
    if (is_multiply_prime(11 * 13 * 7) != true) {
        throw Exception("Test Failed!")
    }
}
