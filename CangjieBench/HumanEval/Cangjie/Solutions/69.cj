import std.collection.ArrayList
import std.collection.max

func search(lst: ArrayList<Int64>): Int64 {
    /*
    You are given a non-empty list of positive integers. Return the greatest integer that is greater than 
    zero, and has a frequency greater than or equal to the value of the integer itself. 
    The frequency of an integer is the number of times it appears in the list.
    If no such a value exist, return -1.
    Examples:
        search(ArrayList<Int64>([4, 1, 2, 2, 3, 1])) == 2
        search(ArrayList<Int64>([1, 2, 2, 3, 3, 3, 4, 4, 4])) == 3
        search(ArrayList<Int64>([5, 5, 4, 4, 4])) == -1
    */
    let frq = ArrayList<Int64>()
    let max_lst = max(lst) ?? 0
    for (_ in 0..max_lst+1) {
        frq.add(0)
    }
    for (i in lst) {
        frq[i] += 1
    }

    var ans = -1
    for (i in 1..frq.size) {
        if (frq[i] >= i) {
            ans = i
        }
    }
    return ans
}
