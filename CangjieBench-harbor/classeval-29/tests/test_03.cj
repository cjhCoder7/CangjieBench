import std.collection.HashMap
import std.collection.ArrayList
import std.math.round
import std.math.abs
import std.sort.sort

func test_datastatistics() {
    let ds = DataStatistics()
    let res = ds.mean(ArrayList<Int64>([1, 2, 3, 4, 5]))
    if (abs(res - 3.00) > 0.01) {
        throw Exception("Test failed!")
    }
    let res2 = ds.median(ArrayList<Int64>([2, 5, 1, 3, 4]))
    if (abs(res2 - 3.00) > 0.01) {
        throw Exception("Test failed!")
    }
    let res3 = ds.mode(ArrayList<Int64>([2, 2, 3, 3, 4]))
    let expected = ArrayList<Int64>([2, 3])
    if (res3 != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_datastatistics()
}
