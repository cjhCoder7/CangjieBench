
main() {
    if (digits(5) != 5) {
        throw Exception("Test Failed!")
    }
    if (digits(54) != 5) {
        throw Exception("Test Failed!")
    }
    if (digits(120) != 1) {
        throw Exception("Test Failed!")
    }
    if (digits(5014) != 5) {
        throw Exception("Test Failed!")
    }
    if (digits(98765) != 315) {
        throw Exception("Test Failed!")
    }
    if (digits(5576543) != 2625) {
        throw Exception("Test Failed!")
    }
    if (digits(2468) != 0) {
        throw Exception("Test Failed!")
    }
}
