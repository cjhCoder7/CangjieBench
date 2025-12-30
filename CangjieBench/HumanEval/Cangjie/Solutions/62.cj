import std.collection.ArrayList

func derivative(xs: ArrayList<Int64>): ArrayList<Int64> {
    /*
    xs represent coefficients of a polynomial.
    xs[0] + xs[1] * x + xs[2] * x^2 + ....
     Return derivative of this polynomial in the same form.
    >>> derivative(ArrayList<Int64>([3, 1, 2, 4, 5]))
    [1, 4, 12, 20]
    >>> derivative(ArrayList<Int64>([1, 2, 3]))
    [2, 6]
    */
    let result = ArrayList<Int64>()
    for (i in 1..xs.size) {
        result.add(xs[i] * i)
    }
    return result
}
