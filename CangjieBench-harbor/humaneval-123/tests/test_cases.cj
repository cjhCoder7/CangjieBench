import std.collection.ArrayList
import std.convert.Parsable
import std.sort.sort

main() {
    if (get_odd_collatz(14) != ArrayList<Int64>([1, 5, 7, 11, 13, 17])) {
        throw Exception("Test Failed!")
    }
    if (get_odd_collatz(5) != ArrayList<Int64>([1, 5])) {
        throw Exception("Test Failed!")
    }
    if (get_odd_collatz(12) != ArrayList<Int64>([1, 3, 5])) {
        throw Exception("Test Failed!")
    }
    if (get_odd_collatz(1) != ArrayList<Int64>([1])) {
        throw Exception("Test Failed!")
    }
}
