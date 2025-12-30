import std.collection.ArrayList
import std.collection.HashMap

func remove_duplicates(numbers: ArrayList<Int64>): ArrayList<Int64> {
    /*
    From a list of integers, remove all elements that occur more than once.
    Keep order of elements left the same as in the input.
    >>> remove_duplicates(ArrayList<Int64>([1, 2, 3, 2, 4]))
    [1, 3, 4]
    */
    let result = ArrayList<Int64>()
    let counter = HashMap<Int64, Int64>()
    for (num in numbers) {
        if (counter.get(num) == None) {
            counter.add(num, 1)
        } else {
            counter.replace(num, (counter.get(num) ?? 0) + 1)
        }
    }
    for ((num, count) in counter) {
        if (count == 1) {
            result.add(num)
        }
    }
    return result
}
