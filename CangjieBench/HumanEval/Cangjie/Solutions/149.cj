import std.collection.ArrayList
import std.sort.sort

func sorted_list_sum(lst: ArrayList<String>): ArrayList<String> {
    /*
    Write a function that accepts a list of strings as a parameter,
    deletes the strings that have odd lengths from it,
    and returns the resulted list with a sorted order,
    The list is always a list of strings and never an array of numbers,
    and it may contain duplicates.
    The order of the list should be ascending by length of each word, and you
    should return the list sorted by that rule.
    If two words have the same length, sort the list alphabetically.
    The function should return a list of strings in sorted order.
    You may assume that all words will have the same length.
    For example:
    assert list_sort(ArrayList<String>(["aa", "a", "aaa"])) => ["aa"]
    assert list_sort(ArrayList<String>(["ab", "a", "aaa", "cd"])) => ["ab", "cd"]
    */
    sort(lst)
    let new_lst = ArrayList<String>()
    for (i in lst) {
        if (i.size % 2 == 0) {
            new_lst.add(i)
        }
    }
    sort(new_lst, key: {a: String => a.size})
    return new_lst
}
