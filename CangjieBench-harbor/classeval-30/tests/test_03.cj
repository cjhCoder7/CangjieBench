import std.collection.ArrayList
import std.math.round
import std.math.sqrt
import std.math.abs

func test_get_variance_1() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
    let res = ds2.get_variance()
    if (abs(res - 1.25) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_get_variance_2() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 203.0, 4.0]))
    let res = ds2.get_variance()
    if (abs(res - 7551.25) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_get_variance_3() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 4.0, 3.0, 2.0]))
    let res = ds2.get_variance()
    if (abs(res - 1.25) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_get_variance_4() {
    let ds2 = DataStatistics2(ArrayList<Float64>([11.0, 14.0, 13.0, 12.0]))
    let res = ds2.get_variance()
    if (abs(res - 1.25) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_get_variance_5() {
    let ds2 = DataStatistics2(ArrayList<Float64>([111.0, 114.0, 113.0, 112.0]))
    let res = ds2.get_variance()
    if (abs(res - 1.25) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_variance_1()
    test_get_variance_2()
    test_get_variance_3()
    test_get_variance_4()
    test_get_variance_5()
}
