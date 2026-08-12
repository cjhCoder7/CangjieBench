main(){
    if (make_palindrome('') != '') {
        throw Exception("Test Failed!")
    }
    if (make_palindrome('x') != 'x') {
        throw Exception("Test Failed!")
    }
    if (make_palindrome('xyz') != 'xyzyx') {
        throw Exception("Test Failed!")
    }
    if (make_palindrome('xyx') != 'xyx') {
        throw Exception("Test Failed!")
    }
    if (make_palindrome('jerry') != 'jerryrrej') {
        throw Exception("Test Failed!")
    }
}
