import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs
import std.sort.sort
import std.math.sqrt

func test_mean() {
    if (abs((Statistics3.mean(ArrayList<Int64>([1, 2, 3])) ?? 0.0) - 2.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_mean_2() {
    if (Statistics3.mean(ArrayList<Int64>()) != None) {
        throw Exception("Test failed!")
    }
}

func test_mean_3() {
    if (abs((Statistics3.mean(ArrayList<Int64>([1, 1, 1])) ?? 0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_mean_4() {
    if (abs((Statistics3.mean(ArrayList<Int64>([1, 1, 1, 1])) ?? 0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_mean_5() {
    if (abs((Statistics3.mean(ArrayList<Int64>([1, 1, 1, 1, 1])) ?? 0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_mean()
    test_mean_2()
    test_mean_3()
    test_mean_4()
    test_mean_5()
}
