import std.collection.ArrayList
import std.sort.sort

func monotonic(l: ArrayList<Int64>): Bool {
    /*
    Return true is list elements are monotonically increasing or decreasing.
    >>> monotonic(ArrayList<Int64>([1, 2, 4, 20]))
    true
    >>> monotonic(ArrayList<Int64>([1, 20, 4, 10]))
    false
    >>> monotonic(ArrayList<Int64>([4, 1, 0, -10]))
    true
    */
    let sorted_l1 = l.clone()
    let sorted_l2 = l.clone()
    sort(sorted_l1)
    sort(sorted_l2, descending: true)
    if (l == sorted_l1 || l == sorted_l2) {
        return true
    }
    return false
}
