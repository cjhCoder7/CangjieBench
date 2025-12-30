import std.collection.ArrayList
import std.collection.min
import std.collection.max

func rescale_to_unit(numbers: ArrayList<Float64>): ArrayList<Float64> {
    /*
    Given list of numbers (of at least two elements), apply a linear transform to that list,
    such that the smallest number will become 0 and the largest will become 1
    >>> rescale_to_unit(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0, 5.0]))
    [0.0, 0.25, 0.5, 0.75, 1.0]
    */
    let min_number = min(numbers) ?? 0.0
    let max_number = max(numbers) ?? 0.0
    let result = ArrayList<Float64>()
    for (number in numbers) {
        result.add((number - min_number) / (max_number - min_number))
    }
    return result
}
