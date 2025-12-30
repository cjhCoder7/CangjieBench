func largest_prime_factor(n: Int64): Int64 {
    /*
    Return the largest prime factor of n. Assume n > 1 and is not a prime.
    >>> largest_prime_factor(13195)
    29
    >>> largest_prime_factor(2048)
    2
    */
    func is_prime(k: Int64): Bool {
        if (k < 2) {
            return false
        }
        for (i in 2..k-1) {
            if (k % i == 0) {
                return false
            }
        }
        return true
    }
    var largest = 1
    for (j in 2..n+1) {
        if ( n % j == 0 && is_prime(j)) {
            largest = max(largest, j)
        }
    }
    return largest
}
