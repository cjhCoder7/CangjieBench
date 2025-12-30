
main(){
    if (largest_prime_factor(15) != 5) {
        throw Exception("Test Failed!")
    }
    if (largest_prime_factor(27) != 3) {
        throw Exception("Test Failed!")
    }
    if (largest_prime_factor(63) != 7) {
        throw Exception("Test Failed!")
    }
    if (largest_prime_factor(330) != 11) {
        throw Exception("Test Failed!")
    }
    if (largest_prime_factor(13195) != 29) {
        throw Exception("Test Failed!")
    }
}