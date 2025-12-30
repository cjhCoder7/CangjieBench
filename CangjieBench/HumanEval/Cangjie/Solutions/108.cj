import std.collection.ArrayList

func count_nums(arr: ArrayList<Int64>): Int64 {
    /*
    Write a function count_nums which takes an array of integers and returns
    the number of elements which has a sum of digits > 0.
    If a number is negative, then its first signed digit will be negative:
    e.g. -123 has signed digits -1, 2, and 3.
    >>> count_nums(ArrayList<Int64>([])) == 0
    >>> count_nums(ArrayList<Int64>([-1, 11, -11])) == 1
    >>> count_nums(ArrayList<Int64>([1, 1, 2])) == 3
    */
    func digits_num(n: Int64): Int64 {
        var neg = 1
        var n_ = n
        if (n < 0) {
            n_ = -1 * n_
            neg = -1    
        }
        let n_list = ArrayList<Int64>()
        for (i in n_.toString()) {
            n_list.add(Int64(i - 48))
        }
        n_list[0] = n_list[0] * neg
        var sum = 0
        for (i in n_list) {
            sum += i
        }
        return sum
    }
    var size = 0
    for (i in arr) {
        if (digits_num(i) > 0) {
            size += 1
        }
    }
    return size
}
