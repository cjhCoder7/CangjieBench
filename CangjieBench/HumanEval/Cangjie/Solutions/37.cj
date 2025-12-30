import std.collection.ArrayList
import std.sort.sort

func sort_even(l: ArrayList<Int64>): ArrayList<Int64> {
    /*
    This function takes a list l and returns a list l' such that
    l' is identical to l in the odd indicies, while its values at the even indicies are equal
    to the values of the even indicies of l, but sorted.
    >>> sort_even(ArrayList<Int64>([1, 2, 3]))
    [1, 2, 3]
    >>> sort_even(ArrayList<Int64>([5, 6, 3, 4]))
    [3, 6, 5, 4]
    */
    let evens = ArrayList<Int64>()
    let odds = ArrayList<Int64>()
    for (i in 0..l.size) {
        if (i % 2 == 0) {
            evens.add(l[i])
        } else {
            odds.add(l[i])
        }
    }
    sort(evens)
    let ans = ArrayList<Int64>()
    for (i in 0..l.size) {
        if (i % 2 == 0) {
            ans.add(evens[i / 2])
        } else {
            ans.add(odds[i / 2])
        }
    }
    return ans
}
