import std.collection.ArrayList
import std.math.sqrt

func factorize(n: Int64): ArrayList<Int64> {
    /*
    Return list of prime factors of given integer in the order from smallest to largest.
    Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
    Input number should be equal to the product of all factors
    >>> factorize(8)
    [2, 2, 2]
    >>> factorize(25)
    [5, 5]
    >>> factorize(70)
    [2, 5, 7]
    */
    let fact = ArrayList<Int64>()
    var i = 2
    var n_ = n
    while (i <= Int64(sqrt(Float64(n_)) + 1.0)) {
        if (n_ % i == 0) {
            fact.add(i)
            n_ /= i
        } else {
            i += 1
        }
    }
    if (n_ > 1) {
        fact.add(n_)
    }
    return fact
}
