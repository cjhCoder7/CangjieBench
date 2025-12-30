func special_factorial(n: Int64): Int64 {
    /*
    The Brazilian factorial is defined as:
    brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
    where n > 0

    For example:
    >>> special_factorial(4)
    288

    The function will receive an integer as input and should return the special
    factorial of this integer.
    */
    var fact_i = 1
    var special_fact = 1
    for (i in 1..n+1) {
        fact_i *= i
        special_fact *= fact_i
    }
    return special_fact
}
