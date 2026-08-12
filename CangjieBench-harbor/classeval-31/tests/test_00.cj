import std.collection.ArrayList
import std.math.sqrt
import std.math.exp
import std.math.abs

func test_correlation_coefficient() {
    let res = DataStatistics4.correlation_coefficient(ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([4.0, 5.0, 6.0]))
    if (abs(res - 0.9999999999999998) > 0.0000000000000001) {
        throw Exception("Test failed!")
    }
}

func test_correlation_coefficient_2() {
    let res = DataStatistics4.correlation_coefficient(ArrayList<Float64>([1.0, 1.0, 1.0]), ArrayList<Float64>([2.0, 2.0, 2.0]))
    if (abs(res - 0.0) > 0.0000000000000001) {
        throw Exception("Test failed!")
    }
}

func test_correlation_coefficient_3() {
    let res = DataStatistics4.correlation_coefficient(ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([1.0, 2.0, 3.0]))
    if (abs(res - 0.9999999999999998) > 0.0000000000000001) {
        throw Exception("Test failed!")
    }
}

func test_correlation_coefficient_4() {
    let res = DataStatistics4.correlation_coefficient(ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([1.0, 2.0, 4.0]))
    if (abs(res - 0.9819805060619659) > 0.0000000000000001) {
        throw Exception("Test failed!")
    }
}

func test_correlation_coefficient_5() {
    let res = DataStatistics4.correlation_coefficient(ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([1.0, 5.0, 3.0]))
    if (abs(res - 0.4999999999999999) > 0.0000000000000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_correlation_coefficient()
    test_correlation_coefficient_2()
    test_correlation_coefficient_3()
    test_correlation_coefficient_4()
    test_correlation_coefficient_5()
}
