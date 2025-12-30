import std.collection.ArrayList

func triples_sum_to_zero(l: ArrayList<Int64>): Bool {
    /*
    triples_sum_to_zero takes a list of integers as an input.
    it returns true if there are three distinct elements in the list that
    sum to zero, and false otherwise.

    >>> triples_sum_to_zero(ArrayList<Int64>([1, 3, 5, 0]))
    false
    >>> triples_sum_to_zero(ArrayList<Int64>([1, 3, -2, 1]))
    true
    >>> triples_sum_to_zero(ArrayList<Int64>([1, 2, 3, 7]))
    false
    >>> triples_sum_to_zero(ArrayList<Int64>([2, 4, -5, 3, 9, 7]))
    true
    >>> triples_sum_to_zero(ArrayList<Int64>([1]))
    false
    */
    for (i in 0..l.size) {
        for (j in (i+1)..l.size) {
            for (k in (j+1)..l.size) {
                if (l[i] + l[j] + l[k] == 0) {
                    return true
                }
            }
        }
    }
    return false
}
