import std.collection.ArrayList

func intersperse(numbers: ArrayList<Int64>, delimeter: Int64): ArrayList<Int64> {
    /*
    Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
    >>> intersperse(ArrayList<Int64>([]), 4)
    []
    >>> intersperse(ArrayList<Int64>([1, 2, 3]), 4)
    [1, 4, 2, 4, 3]
    */
    if (numbers.size == 0) {
        return ArrayList<Int64>([])
    }

    let result = ArrayList<Int64>([])

    for (i in 0..numbers.size - 1) {
        result.add(numbers[i])
        result.add(delimeter)
    }
    result.add(numbers[numbers.size - 1])
    return result
}
