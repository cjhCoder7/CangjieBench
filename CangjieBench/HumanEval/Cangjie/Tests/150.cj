
main() {
    if (x_or_y(7, 34, 12) != 34) {
        throw Exception("Test Failed!")
    }
    if (x_or_y(15, 8, 5) != 5) {
        throw Exception("Test Failed!")
    }
    if (x_or_y(3, 33, 5212) != 33) {
        throw Exception("Test Failed!")
    }
    if (x_or_y(1259, 3, 52) != 3) {
        throw Exception("Test Failed!")
    }
    if (x_or_y(7919, -1, 12) != -1) {
        throw Exception("Test Failed!")
    }
    if (x_or_y(3609, 1245, 583) != 583) {
        throw Exception("Test Failed!")
    }
    if (x_or_y(91, 56, 129) != 129) {
        throw Exception("Test Failed!")
    }
    if (x_or_y(6, 34, 1234) != 1234) {
        throw Exception("Test Failed!")
    }
    if (x_or_y(1, 2, 0) != 0) {
        throw Exception("Test Failed!")
    }
    if (x_or_y(2, 2, 0) != 2) {
        throw Exception("Test Failed!")
    }
}
