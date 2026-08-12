import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs
import std.sort.sort
import std.math.sqrt

func test_mode() {
    let result = Statistics3.mode(ArrayList<Int64>([1, 2, 3, 3]))
    let expected = ArrayList<Int64>([3])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_mode_2() {
    let result = Statistics3.mode(ArrayList<Int64>([1, 2, 3, 3, 4, 4]))
    let expected = ArrayList<Int64>([3, 4])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_mode_3() {
    let result = Statistics3.mode(ArrayList<Int64>([1, 2, 3, 3, 4, 4, 5]))
    let expected = ArrayList<Int64>([3, 4])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_mode_4() {
    let result = Statistics3.mode(ArrayList<Int64>([1, 2, 3, 3, 4, 4, 5, 5]))
    let expected = ArrayList<Int64>([3, 4, 5])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_mode_5() {
    let result = Statistics3.mode(ArrayList<Int64>([1, 2, 3, 3, 4, 4, 5, 5, 6]))
    let expected = ArrayList<Int64>([3, 4, 5])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_mode()
    test_mode_2()
    test_mode_3()
    test_mode_4()
    test_mode_5()
}
