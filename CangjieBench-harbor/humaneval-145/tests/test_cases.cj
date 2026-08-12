import std.collection.ArrayList
import std.convert.Parsable
import std.sort.sort

main() {
    if (order_by_points(ArrayList<Int64>([1, 11, -1, -11, -12])) != ArrayList<Int64>([-1, -11, 1, -12, 11])) {
        throw Exception("Test Failed!")
    }
    if (order_by_points(ArrayList<Int64>([1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46])) != ArrayList<Int64>([0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])) {
        throw Exception("Test Failed!")
    }
    if (order_by_points(ArrayList<Int64>([])) != ArrayList<Int64>([])) {
        throw Exception("Test Failed!")
    }
    if (order_by_points(ArrayList<Int64>([1, -11, -32, 43, 54, -98, 2, -3])) != ArrayList<Int64>([-3, -32, -98, -11, 1, 2, 43, 54])) {
        throw Exception("Test Failed!")
    }
    if (order_by_points(ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])) != ArrayList<Int64>([1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])) {
        throw Exception("Test Failed!")
    }
    if (order_by_points(ArrayList<Int64>([0, 6, 6, -76, -21, 23, 4])) != ArrayList<Int64>([-76, -21, 0, 4, 23, 6, 6])) {
        throw Exception("Test Failed!")
    }
}
