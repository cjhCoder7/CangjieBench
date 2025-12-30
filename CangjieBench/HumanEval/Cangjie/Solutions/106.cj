import std.collection.ArrayList

func f(n: Int64): ArrayList<Int64> {
    /*
    Implement the function f that takes n as a parameter,
    and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
    or the sum of numbers from 1 to i otherwise.
    i starts from 1.
    the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
    Example:
    f(5) == [1, 2, 6, 24, 15]
    */
    let ret = ArrayList<Int64>()
    for (i in 1..n+1) {
        if (i % 2 == 0) {
            var x = 1
            for (j in 1..i+1) {
                x *= j
            }
            ret.add(x)
        } else {
            var x = 0
            for (j in 1..i+1) {
                x += j
            }
            ret.add(x)
        }
    }
    return ret
}
