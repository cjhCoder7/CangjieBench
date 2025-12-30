import std.collection.ArrayList
import std.sort.sort

func unique_digits(x: ArrayList<Int64>): ArrayList<Int64> {
    /*
    Given a list of positive integers x. return a sorted list of all 
    elements that hasn't any even digit.

    Note: Returned list should be sorted in increasing order.
    
    For example:
    >>> unique_digits(ArrayList<Int64>([15, 33, 1422, 1]))
    [1, 15, 33]
    >>> unique_digits(ArrayList<Int64>([152, 323, 1422, 10]))
    []
    */
    let odd_digit_elements = ArrayList<Int64>()
    for (i in x) {
        var flag = true
        for (c in i.toString()) {
            if ((c - 48) % 2 == 0) {
                flag = false
                break
            }
        }
        if (flag) {
            odd_digit_elements.add(i)
        }
    }
    sort(odd_digit_elements)
    return odd_digit_elements
}
