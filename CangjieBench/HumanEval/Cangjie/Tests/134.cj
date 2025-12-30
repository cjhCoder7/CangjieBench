
main() {
    if (check_if_last_char_is_a_letter("apple") != false) {
        throw Exception("Test Failed!")
    }
    if (check_if_last_char_is_a_letter("apple pi e") != true) {
        throw Exception("Test Failed!")
    }
    if (check_if_last_char_is_a_letter("eeeee") != false) {
        throw Exception("Test Failed!")
    }
    if (check_if_last_char_is_a_letter("A") != true) {
        throw Exception("Test Failed!")
    }
    if (check_if_last_char_is_a_letter("Pumpkin pie ") != false) {
        throw Exception("Test Failed!")
    }
    if (check_if_last_char_is_a_letter("Pumpkin pie 1") != false) {
        throw Exception("Test Failed!")
    }
    if (check_if_last_char_is_a_letter("") != false) {
        throw Exception("Test Failed!")
    }
    if (check_if_last_char_is_a_letter("eeeee e ") != false) {
        throw Exception("Test Failed!")
    }
    if (check_if_last_char_is_a_letter("apple pie") != false) {
        throw Exception("Test Failed!")
    }
    if (check_if_last_char_is_a_letter("apple pi e ") != false) {
        throw Exception("Test Failed!")
    }
}
