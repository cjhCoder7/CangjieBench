import std.collection.ArrayList

func largest_smallest_integers(lst: ArrayList<Int64>): (Option<Int64>, Option<Int64>) {
    /*
    Create a function that returns a tuple (a, b), where 'a' is
    the largest of negative integers, and 'b' is the smallest
    of positive integers in a list.
    If there is no negative or positive integers, return them as Option<Int64>.None.

    Examples:
    largest_smallest_integers(ArrayList<Int64>([2, 4, 1, 3, 5, 7])) == (Option<Int64>.None, 1)
    largest_smallest_integers(ArrayList<Int64>([])) == (Option<Int64>.None, Option<Int64>.None)
    largest_smallest_integers(ArrayList<Int64>([0])) == (Option<Int64>.None, Option<Int64>.None)
    */
    var neg = Option<Int64>.None
    var pos = Option<Int64>.None
    for (i in lst) {
        if (i < 0) {
            if (neg == Option<Int64>.None) {
                neg = i
            } else {
                neg = max(neg ?? Int64.Min, i)
            }
        }
        if (i > 0) {
            if (pos == Option<Int64>.None) {
                pos = i
            } else {
                pos = min(pos ?? Int64.Max, i)
            }
        }
    }
    return (neg, pos)
}
