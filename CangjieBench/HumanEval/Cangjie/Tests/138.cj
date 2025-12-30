
main() {
    if (is_equal_to_sum_even(4) != false) {
        throw Exception("Test Failed!")
    }
    if (is_equal_to_sum_even(6) != false) {
        throw Exception("Test Failed!")
    }
    if (is_equal_to_sum_even(8) != true) {
        throw Exception("Test Failed!")
    }
    if (is_equal_to_sum_even(10) != true) {
        throw Exception("Test Failed!")
    }
    if (is_equal_to_sum_even(11) != false) {
        throw Exception("Test Failed!")
    }
    if (is_equal_to_sum_even(12) != true) {
        throw Exception("Test Failed!")
    }
    if (is_equal_to_sum_even(13) != false) {
        throw Exception("Test Failed!")
    }
    if (is_equal_to_sum_even(16) != true) {
        throw Exception("Test Failed!")
    }
}
