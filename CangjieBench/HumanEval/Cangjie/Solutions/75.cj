func is_multiply_prime(a: Int64): Bool {
    /*
    Write a function that returns true if the given number is the multiplication of 3 prime numbers
    and false otherwise.
    Knowing that (a) is less then 100. 
    Example:
    is_multiply_prime(30) == true
    30 = 2 * 3 * 5
    */
    func is_prime(n: Int64): Bool {
        for (j in 2..n) {
            if (n % j == 0) {
                return false
            }
        }
        return true
    }

    for (i in 2..101) {
        if (!is_prime(i)) {
            continue
        }
        for (j in 2..101) {
            if (!is_prime(j)) {
                continue
            }
            for (k in 2..101) {
                if (!is_prime(k)) {
                    continue
                }
                if (i * j * k == a) {
                    return true
                }
            }
        }
    }
    return false
}
