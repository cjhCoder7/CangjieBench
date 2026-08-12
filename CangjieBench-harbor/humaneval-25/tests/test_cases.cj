import std.collection.ArrayList
import std.math.sqrt

main(){
    if (factorize(2) != ArrayList<Int64>([2])) {
        throw Exception("Test failed!")
    }
    if (factorize(4) != ArrayList<Int64>([2, 2])) {
        throw Exception("Test failed!")
    }
    if (factorize(8) != ArrayList<Int64>([2, 2, 2])) {
        throw Exception("Test failed!")
    }
    if (factorize(3 * 19) != ArrayList<Int64>([3, 19])) {
        throw Exception("Test failed!")
    }
    if (factorize(3 * 19 * 3 * 19) != ArrayList<Int64>([3, 3, 19, 19])) {
        throw Exception("Test failed!")
    }
    if (factorize(3 * 19 * 3 * 19 * 3 * 19) != ArrayList<Int64>([3, 3, 3, 19, 19, 19])) {
        throw Exception("Test failed!")
    }
    if (factorize(3 * 19 * 19 * 19) != ArrayList<Int64>([3, 19, 19, 19])) {
        throw Exception("Test failed!")
    }
    if (factorize(3 * 2 * 3) != ArrayList<Int64>([2, 3, 3])) {
        throw Exception("Test failed!")
    }
}
