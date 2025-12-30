func string_xor(a: String, b: String): String {
    /*
    Input are two strings a and b consisting only of 1s and 0s.
    Perform binary XOR on these inputs and return result also as a string.
    >>> string_xor('010', '110')
    '100'
    */
    var result = ''
    for (i in 0..a.size) {
        if (a[i] == b[i]) {
            result = result + '0'
        } else {
            result = result + '1'
        }
    }
    return result
}
