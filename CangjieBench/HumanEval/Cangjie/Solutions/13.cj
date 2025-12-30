func greatest_common_divisor(a: Int64, b: Int64): Int64 {
    /*
    Return a greatest common divisor of two integers a and b
    >>> greatest_common_divisor(3, 5)
    1
    >>> greatest_common_divisor(25, 15)
    5
    */
    var temp_a = a
    var temp_b = b
    while (temp_b != 0) {
        var t = temp_b
        temp_b = temp_a % temp_b
        temp_a = t
    }
    return temp_a
}
