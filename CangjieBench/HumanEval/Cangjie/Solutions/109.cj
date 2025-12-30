import std.collection.ArrayList
import std.sort.sort

func move_one_ball(arr: ArrayList<Int64>): Bool {
    /*
    We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
    numbers in the array will be randomly ordered. Your task is to determine if
    it is possible to get an array sorted in non-decreasing order by performing 
    the following operation on the given array:
        You are allowed to perform right shift operation any number of times.
    
    One right shift operation means shifting all elements of the array by one
    position in the right direction. The last element of the array will be moved to
    the starting position in the array i.e. 0th index. 

    If it is possible to obtain the sorted array by performing the above operation
    then return true else return false.
    If the given array is empty then return true.

    Note: The given list is guaranteed to have unique elements.

    For Example:
    
    move_one_ball(ArrayList<Int64>([3, 4, 5, 1, 2]))==>true
    Explanation: By performin 2 right shift operations, non-decreasing order can
                 be achieved for the given array.
    move_one_ball(ArrayList<Int64>([3, 5, 4, 1, 2]))==>false
    Explanation:It is not possible to get non-decreasing order for the given
                array by performing any number of right shift operations.
                
    */
    if (arr.size == 0) {
        return true
    }
    let sorted_array = ArrayList<Int64>(arr)
    sort(sorted_array)

    var min_value = Int64.Max
    var min_index = -1
    for (i in 0..arr.size) {
        if (arr[i] < min_value) {
            min_value = arr[i]
            min_index = i
        }
    }
    let my_arr = ArrayList<Int64>(arr[min_index..])
    my_arr.add(all: arr[0..min_index])
    for (i in 0..arr.size) {
        if (my_arr[i] != sorted_array[i]) {
            return false
        }
    }
    return true
}
