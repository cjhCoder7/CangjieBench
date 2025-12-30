import std.collection.ArrayList
import std.convert.Parsable
import std.sort.sort

func order_by_points(nums: ArrayList<Int64>): ArrayList<Int64> {
    /*
    Write a function which sorts the given list of integers
    in ascending order according to the sum of their digits.
    Note: if there are several items with similar sum of their digits,
    order them based on their index in original list.

    For example:
    >>> order_by_points(ArrayList<Int64>([1, 11, -1, -11, -12])) == [-1, -11, 1, -12, 11]
    >>> order_by_points(ArrayList<Int64>([])) == []
    */
    func digits_sum(n: Int64): Int64 {
        var neg = 1
        var n_ = n
        if (n_ < 0) {
            n_ = -1 * n_
            neg = -1
        }
        let n_list = ArrayList<Int64>()
        for (i in n_.toString().toRuneArray()) {
            n_list.add(Int64.parse(i.toString()))
        }
        n_list[0] = n_list[0] * neg
        var sum = 0
        for (i in n_list) {
            sum += i
        }
        return sum
    }
    sort(nums, key: digits_sum)
    return nums
}
