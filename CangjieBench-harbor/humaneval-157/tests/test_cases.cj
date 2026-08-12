main() {
    if (right_angle_triangle(3, 4, 5) != true) {
        throw Exception("Test Failed!")
    }
    if (right_angle_triangle(1, 2, 3) != false) {
        throw Exception("Test Failed!")
    }
    if (right_angle_triangle(10, 6, 8) != true) {
        throw Exception("Test Failed!")
    }
    if (right_angle_triangle(2, 2, 2) != false) {
        throw Exception("Test Failed!")
    }
    if (right_angle_triangle(7, 24, 25) != true) {
        throw Exception("Test Failed!")
    }
    if (right_angle_triangle(10, 5, 7) != false) {
        throw Exception("Test Failed!")
    }
    if (right_angle_triangle(5, 12, 13) != true) {
        throw Exception("Test Failed!")
    }
    if (right_angle_triangle(15, 8, 17) != true) {
        throw Exception("Test Failed!")
    }
    if (right_angle_triangle(48, 55, 73) != true) {
        throw Exception("Test Failed!")
    }
    if (right_angle_triangle(1, 1, 1) != false) {
        throw Exception("Test Failed!")
    }
    if (right_angle_triangle(2, 2, 10) != false) {
        throw Exception("Test Failed!")
    }
}
