main(){
    if (is_prime(6) != false) {
        throw Exception("Test failed!")
    }
    if (is_prime(101) != true) {
        throw Exception("Test failed!")
    }
    if (is_prime(11) != true) {
        throw Exception("Test failed!")
    }
    if (is_prime(13441) != true) {
        throw Exception("Test failed!")
    }
    if (is_prime(61) != true) {
        throw Exception("Test failed!")
    }
    if (is_prime(4) != false) {
        throw Exception("Test failed!")
    }
    if (is_prime(1) != false) {
        throw Exception("Test failed!")
    }
    if (is_prime(5) != true) {
        throw Exception("Test failed!")
    }
    if (is_prime(11) != true) {
        throw Exception("Test failed!")
    }
    if (is_prime(17) != true) {
        throw Exception("Test failed!")
    }
    if (is_prime(5 * 17) != false) {
        throw Exception("Test failed!")
    }
    if (is_prime(11 * 7) != false) {
        throw Exception("Test failed!")
    }
    if (is_prime(13441 * 19) != false) {
        throw Exception("Test failed!")
    }
}
