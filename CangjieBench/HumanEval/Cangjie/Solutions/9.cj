import std.collection.ArrayList

func rolling_max(numbers: ArrayList<Int64>): ArrayList<Int64> {
    /*
    From a given list of integers, generate a list of rolling maximum element found until given moment
    in the sequence.
    >>> rolling_max(ArrayList<Int64>([1, 2, 3, 2, 3, 4, 2]))
    [1, 2, 3, 3, 3, 4, 4]
    */
    var rolling_max: Int64 = Int64.Min
    let result: ArrayList<Int64> = ArrayList<Int64>()

    for (n in numbers) {
        if (rolling_max == Int64.Min) {
            rolling_max = n
        } else {
            rolling_max = max(rolling_max, n)
        }
        result.add(rolling_max)
    }

    return result
}
