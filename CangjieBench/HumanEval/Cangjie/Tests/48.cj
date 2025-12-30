
main(){
    if (is_palindrome("") != true) {
        throw Exception("Test Failed!")
    }
    if (is_palindrome("aba") != true) {
        throw Exception("Test Failed!")
    }
    if (is_palindrome("aaaaa") != true) {
        throw Exception("Test Failed!")
    }
    if (is_palindrome("zbcd") != false) {
        throw Exception("Test Failed!")
    }
    if (is_palindrome("xywyx") != true) {
        throw Exception("Test Failed!")
    }
    if (is_palindrome("xywyz") != false) {
        throw Exception("Test Failed!")
    }
    if (is_palindrome("xywzx") != false) {
        throw Exception("Test Failed!")
    }
}