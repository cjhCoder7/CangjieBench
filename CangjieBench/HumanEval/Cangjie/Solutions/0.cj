import std.collection.ArrayList
import std.math.abs

func hasCloseElements(numbers: ArrayList<Float64>, threshold: Float64): Bool {
    /*
    Check if in given list of numbers, are any two numbers closer to each other than
    given threshold.
    >>> hasCloseElements(ArrayList<Float64>([1.0, 2.0, 3.0]), 0.5)
    false
    >>> hasCloseElements(ArrayList<Float64>([1.0, 2.8, 3.0, 4.0, 5.0, 2.0]), 0.3)
    true
    */
    for (idx in 0..numbers.size) {
        for (idx2 in 0..numbers.size where idx != idx2) {
            let distance = abs(numbers[idx] - numbers[idx2])
            if (distance < threshold) {
                return true
            }
        }
    }
    return false
}
