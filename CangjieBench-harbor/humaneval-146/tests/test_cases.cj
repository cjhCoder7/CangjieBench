import std.collection.ArrayList
import std.convert.Parsable

main() {
    if (specialFilter(ArrayList<Int64>([5, -2, 1, -5])) != 0) {
        throw Exception("Test Failed!")
    }
    if (specialFilter(ArrayList<Int64>([15, -73, 14, -15])) != 1) {
        throw Exception("Test Failed!")
    }
    if (specialFilter(ArrayList<Int64>([33, -2, -3, 45, 21, 109])) != 2) {
        throw Exception("Test Failed!")
    }
    if (specialFilter(ArrayList<Int64>([43, -12, 93, 125, 121, 109])) != 4) {
        throw Exception("Test Failed!")
    }
    if (specialFilter(ArrayList<Int64>([71, -2, -33, 75, 21, 19])) != 3) {
        throw Exception("Test Failed!")
    }
    if (specialFilter(ArrayList<Int64>([1])) != 0) {
        throw Exception("Test Failed!")
    }
    if (specialFilter(ArrayList<Int64>([])) != 0) {
        throw Exception("Test Failed!")
    }
}
