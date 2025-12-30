import std.collection.ArrayList
import std.math.ceil

func sum_squares(lst: ArrayList<Float64>): Int64 {
    /*
    You are given a list of numbers.
    You need to return the sum of squared numbers in the given list,
    round each element in the list to the upper int(Ceiling) first.
    Examples:
    For lst = [1.0,2.0,3.0] the output should be 14
    For lst = [1.0,4.0,9.0] the output should be 98
    For lst = [1.0,3.0,5.0,7.0] the output should be 84
    For lst = [1.4,4.2,0.0] the output should be 29
    For lst = [-2.4,1.0,1.0] the output should be 6
    

    */
    var squared = 0
    for (i in lst) {
        squared += Int64(ceil(i) ** 2)
    }
    return squared
}
