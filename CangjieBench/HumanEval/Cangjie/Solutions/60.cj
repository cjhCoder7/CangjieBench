func sum_to_n(n: Int64): Int64 {
    /*
    sum_to_n is a function that sums numbers from 1 to n.
    >>> sum_to_n(30)
    465
    >>> sum_to_n(100)
    5050
    >>> sum_to_n(5)
    15
    >>> sum_to_n(10)
    55
    >>> sum_to_n(1)
    1
    */
    var sum = 0
    for (i in 1..n+1) {
        sum += i
    }
    return sum
}
