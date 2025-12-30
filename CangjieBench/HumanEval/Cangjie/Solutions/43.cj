import std.collection.ArrayList

func pairs_sum_to_zero(l: ArrayList<Int64>): Bool {
    /*
    pairs_sum_to_zero takes a list of integers as an input.
    it returns true if there are two distinct elements in the list that
    sum to zero, and false otherwise.
    >>> pairs_sum_to_zero(ArrayList<Int64>([1, 3, 5, 0]))
    false
    >>> pairs_sum_to_zero(ArrayList<Int64>([1, 3, -2, 1]))
    false
    >>> pairs_sum_to_zero(ArrayList<Int64>([1, 2, 3, 7]))
    false
    >>> pairs_sum_to_zero(ArrayList<Int64>([2, 4, -5, 3, 5, 7]))
    true
    >>> pairs_sum_to_zero(ArrayList<Int64>([1]))
    false
    */
    for (i in 0..l.size) {
        for (j in i+1..l.size) {
            if (l[i] + l[j] == 0) {
                return true
            }
        }
    }
    return false
}
