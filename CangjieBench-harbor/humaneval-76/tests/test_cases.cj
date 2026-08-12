main(){
    if (is_simple_power(16, 2) != true) {
        throw Exception("Test Failed!")
    }
    if (is_simple_power(143214, 16) != false) {
        throw Exception("Test Failed!")
    }
    if (is_simple_power(4, 2) != true) {
        throw Exception("Test Failed!")
    }
    if (is_simple_power(9, 3) != true) {
        throw Exception("Test Failed!")
    }
    if (is_simple_power(16, 4) != true) {
        throw Exception("Test Failed!")
    }
    if (is_simple_power(24, 2) != false) {
        throw Exception("Test Failed!")
    }
    if (is_simple_power(128, 4) != false) {
        throw Exception("Test Failed!")
    }
    if (is_simple_power(12, 6) != false) {
        throw Exception("Test Failed!")
    }
    if (is_simple_power(1, 1) != true) {
        throw Exception("Test Failed!")
    }
    if (is_simple_power(1, 12) != true) {
        throw Exception("Test Failed!")
    }
}
