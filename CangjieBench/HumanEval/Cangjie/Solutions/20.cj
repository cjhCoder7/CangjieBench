import std.collection.ArrayList
import std.math.abs

func find_closest_elements(numbers: ArrayList<Float64>): (Float64, Float64) {
    /*
    From a supplied list of numbers (of length at least two) select and return two that are the closest to each
    other and return them in order (smaller number, larger number).
    >>> find_closest_elements(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0, 5.0, 2.2]))
    (2.0, 2.2)
    >>> find_closest_elements(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0, 5.0, 2.0]))
    (2.0, 2.0)
    */
    var closest_pair = Option<(Float64, Float64)>.None
    var distance = Option<Float64>.None

    for (i in 0..numbers.size) {
        for (j in 0..numbers.size) {
            if (i != j) {
                if (distance == None) {
                    distance = abs(numbers[i] - numbers[j])
                    if (numbers[i] < numbers[j]) {
                        closest_pair = (numbers[i], numbers[j])
                    } else {
                        closest_pair = (numbers[j], numbers[i])
                    }
                } else {
                    let new_distance =  abs(numbers[i] - numbers[j])
                    if (new_distance < (distance ?? 0.0)) {
                        distance = new_distance
                        if (numbers[i] < numbers[j]) {
                            closest_pair = (numbers[i], numbers[j])
                        } else {
                            closest_pair = (numbers[j], numbers[i])
                        }
                    }
                }
            }
        }
    }
    return closest_pair ?? (0.0, 0.0)
}
