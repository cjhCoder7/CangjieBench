func is_prime(n: Int64): Bool {
    /*
    Return true if a given number is prime, and false otherwise.
    >>> is_prime(6)
    false
    >>> is_prime(101)
    true
    >>> is_prime(11)
    true
    >>> is_prime(13441)
    true
    >>> is_prime(61)
    true
    >>> is_prime(4)
    false
    >>> is_prime(1)
    false
    */
    if (n < 2) {
        return false
    }
    for (k in 2..(n-1)) {
        if (n % k == 0) {
            return false
        }
    }
    return true
}
