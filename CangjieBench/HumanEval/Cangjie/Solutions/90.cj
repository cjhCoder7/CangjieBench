import std.collection.ArrayList
import std.collection.HashSet
import std.sort.sort

func next_smallest(lst: ArrayList<Int64>): Option<Int64> {
    /*
    You are given a list of integers.
    Write a function next_smallest() that returns the 2nd smallest element of the list.
    Return None if there is no such element.
    
    next_smallest(ArrayList<Int64>([1, 2, 3, 4, 5])) == 2
    next_smallest(ArrayList<Int64>([5, 1, 4, 3, 2])) == 2
    next_smallest(ArrayList<Int64>([])) == None
    next_smallest(ArrayList<Int64>([1, 1])) == None
    */
    let lst_set = HashSet<Int64>(lst)
    let lst_arr = ArrayList<Int64>(lst_set)
    sort(lst_arr)
    if (lst_arr.size < 2) {
        return None
    } else {
        return lst_arr[1]
    }
}
