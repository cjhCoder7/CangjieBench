main() {
    if (special_factorial(4) != 288) {
        throw Exception("Test Failed!")
    }
    if (special_factorial(5) != 34560) {
        throw Exception("Test Failed!")
    }
    if (special_factorial(7) != 125411328000) {
        throw Exception("Test Failed!")
    }
    if (special_factorial(1) != 1) {
        throw Exception("Test Failed!")
    }
}
