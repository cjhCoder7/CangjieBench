import std.collection.ArrayList
import std.math.abs

func prod_signs(arr: ArrayList<Int64>): Option<Int64> {
    /*
    You are given an array arr of integers and you need to return
    sum of magnitudes of integers multiplied by product of all signs
    of each number in the array, represented by 1, -1 or 0.
    Note: return None for empty arr.

    Example:
    >>> prod_signs(ArrayList<Int64>([1, 2, 2, -4])) == -9
    >>> prod_signs(ArrayList<Int64>([0, 1])) == 0
    >>> prod_signs(ArrayList<Int64>([])) == None
    */
    if (arr.size == 0) {
        return Option<Int64>.None
    }
    var prod = 0
    if (arr.contains(0)) {
        prod = 0
    } else {
        var sum_len = 0
        for (x in arr) {
            if (x < 0) {
                sum_len++
            }
        }
        prod = Int64(Float64(-1) ** Float64(sum_len))
    }
    var sum_abs = 0
    for (i in arr) {
        sum_abs += abs(i)
    }
    return prod * sum_abs
}
