import std.collection.ArrayList
import std.sort.sort
import std.convert.Formattable

func sort_array(arr: ArrayList<Int64>): ArrayList<Int64> {
    /*
    In this Kata, you have to sort an array of non-negative integers according to
    number of ones in their binary representation in ascending order.
    For similar number of ones, sort based on decimal value.

    It must be implemented like this:
    >>> sort_array(ArrayList<Int64>([1, 5, 2, 3, 4])) == [1, 2, 3, 4, 5]
    >>> sort_array(ArrayList<Int64>([-2, -3, -4, -5, -6])) == [-6, -5, -4, -3, -2]
    >>> sort_array(ArrayList<Int64>([1, 0, 2, 3, 4])) == [0, 1, 2, 3, 4]
    */
    sort(arr)
    sort(arr, key: {i: Int64 => i.format("b").count("1")})
    return arr
}
