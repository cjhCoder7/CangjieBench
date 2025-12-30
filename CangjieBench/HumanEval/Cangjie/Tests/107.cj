
main() {
    if (even_odd_palindrome(123) != (8, 13)) {
        throw Exception("Test Failed!")
    }
    if (even_odd_palindrome(12) != (4, 6)) {
        throw Exception("Test Failed!")
    }
    if (even_odd_palindrome(3) != (1, 2)) {
        throw Exception("Test Failed!")
    }
    if (even_odd_palindrome(63) != (6, 8)) {
        throw Exception("Test Failed!")
    }
    if (even_odd_palindrome(25) != (5, 6)) {
        throw Exception("Test Failed!")
    }
    if (even_odd_palindrome(19) != (4, 6)) {
        throw Exception("Test Failed!")
    }
    if (even_odd_palindrome(9) != (4, 5)) {
        throw Exception("Test Failed!")
    }
    if (even_odd_palindrome(1) != (0, 1)) {
        throw Exception("Test Failed!")
    }
}
