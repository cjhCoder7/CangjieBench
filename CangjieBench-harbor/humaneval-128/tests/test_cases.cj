import std.collection.ArrayList
import std.math.abs

main() {
    if (prod_signs(ArrayList<Int64>([1, 2, 2, -4])) != -9) {
        throw Exception("Test Failed!")
    }
    if (prod_signs(ArrayList<Int64>([0, 1])) != 0) {
        throw Exception("Test Failed!")
    }
    if (prod_signs(ArrayList<Int64>([1, 1, 1, 2, 3, -1, 1])) != -10) {
        throw Exception("Test Failed!")
    }
    if (prod_signs(ArrayList<Int64>([])) != None) {
        throw Exception("Test Failed!")
    }
    if (prod_signs(ArrayList<Int64>([2, 4, 1, 2, -1, -1, 9])) != 20) {
        throw Exception("Test Failed!")
    }
    if (prod_signs(ArrayList<Int64>([-1, 1, -1, 1])) != 4) {
        throw Exception("Test Failed!")
    }
    if (prod_signs(ArrayList<Int64>([-1, 1, 1, 1])) != -4) {
        throw Exception("Test Failed!")
    }
    if (prod_signs(ArrayList<Int64>([-1, 1, 1, 0])) != 0) {
        throw Exception("Test Failed!")
    }
}
