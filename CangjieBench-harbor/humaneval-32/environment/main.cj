import std.collection.ArrayList
import std.math.pow
import std.math.abs
import std.random.Random

func poly(xs: ArrayList<Int64>, x: Float64): Float64 {
    /*
    Evaluates polynomial with coefficients xs at point x.
    return xs[0] + xs[1] * x + xs[1] * x^2 + .... xs[n] * x^n
    */
    var result: Float64 = 0.0
    for (i in 0..xs.size) {
        result += Float64(xs[i]) * pow(x, i)
    }
    return result
}

func find_zero(xs: ArrayList<Int64>): Float64 {
    /*
    xs are coefficients of a polynomial.
    find_zero find x such that poly(x) = 0.
    find_zero returns only only zero point, even if there are many.
    Moreover, find_zero only takes list xs having even number of coefficients
    and largest non zero coefficient as it guarantees
    a solution.
    >>> find_zero(ArrayList<Int64>([1, 2])) # f(x) = 1 + 2x
    -0.5
    >>> find_zero(ArrayList<Int64>([-6, 11, -6, 1])) # (x - 1) * (x - 2) * (x - 3) = -6 + 11x - 6x^2 + x^3
    1.0
    */
    
}
