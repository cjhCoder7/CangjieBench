main(){
    if (largest_divisor(3) != 1) {
        throw Exception("Test failed!")
    }
    if (largest_divisor(7) != 1) {
        throw Exception("Test failed!")
    }
    if (largest_divisor(10) != 5) {
        throw Exception("Test failed!")
    }
    if (largest_divisor(100) != 50) {
        throw Exception("Test failed!")
    }
    if (largest_divisor(49) != 7) {
        throw Exception("Test failed!")
    }
}
