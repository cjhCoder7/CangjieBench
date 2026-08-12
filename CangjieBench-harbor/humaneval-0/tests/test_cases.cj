import std.collection.ArrayList
import std.math.abs

main(){
    if (hasCloseElements(ArrayList<Float64>([1.0, 2.0, 3.9, 4.0, 5.0, 2.2]), 0.3) != true) {
        throw Exception("Test failed!");
    }
    if (hasCloseElements(ArrayList<Float64>([1.0, 2.0, 3.9, 4.0, 5.0, 2.2]), 0.05) != false) {
        throw Exception("Test failed!");
    }
    if (hasCloseElements(ArrayList<Float64>([1.0, 2.0, 5.9, 4.0, 5.0]), 0.95) != true) {
        throw Exception("Test failed!");
    }
    if (hasCloseElements(ArrayList<Float64>([1.0, 2.0, 5.9, 4.0, 5.0]), 0.8) != false) {
        throw Exception("Test failed!");
    }
    if (hasCloseElements(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0, 5.0, 2.0]), 0.1) != true) {
        throw Exception("Test failed!");
    }
    if (hasCloseElements(ArrayList<Float64>([1.1, 2.2, 3.1, 4.1, 5.1]), 1.0) != true) {
        throw Exception("Test failed!");
    }
    if (hasCloseElements(ArrayList<Float64>([1.1, 2.2, 3.1, 4.1, 5.1]), 0.5) != false) {
        throw Exception("Test failed!");
    }
}
