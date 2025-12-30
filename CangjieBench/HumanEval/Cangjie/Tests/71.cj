
main(){
    if ((triangle_area(3, 4, 5) - 6.00) >= 1e-2 || (6.00 - triangle_area(3, 4, 5)) >= 1e-2) {
        throw Exception("Test Failed!")
    }
    if ((triangle_area(1, 2, 10) - (-1.00)) >= 1e-2 || ((-1.00) - triangle_area(1, 2, 10)) >= 1e-2) {
        throw Exception("Test Failed!")
    }
    if ((triangle_area(4, 8, 5) - 8.18) >= 1e-2 || (8.18 - triangle_area(4, 8, 5)) >= 1e-2) {
        throw Exception("Test Failed!")
    }
    if ((triangle_area(2, 2, 2) - 1.73) >= 1e-2 || (1.73 - triangle_area(2, 2, 2)) >= 1e-2) {
        throw Exception("Test Failed!")
    }
    if ((triangle_area(1, 2, 3) - (-1.00)) >= 1e-2 || ((-1.00) - triangle_area(1, 2, 3)) >= 1e-2) {
        throw Exception("Test Failed!")
    }
    if ((triangle_area(10, 5, 7) - 16.25) >= 1e-2 || (16.25 - triangle_area(10, 5, 7)) >= 1e-2) {
        throw Exception("Test Failed!")
    }
    if ((triangle_area(2, 6, 3) - (-1.00)) >= 1e-2 || ((-1.00) - triangle_area(2, 6, 3)) >= 1e-2) {
        throw Exception("Test Failed!")
    }
    if ((triangle_area(1, 1, 1) - 0.43) >= 1e-2 || (0.43 - triangle_area(1, 1, 1)) >= 1e-2) {
        throw Exception("Test Failed!")
    }
    if ((triangle_area(2, 2, 10) - (-1.00)) >= 1e-2 || ((-1.00) - triangle_area(2, 2, 10)) >= 1e-2) {
        throw Exception("Test Failed!")
    }
}