import std.collection.ArrayList
import std.math.sqrt
import std.math.exp
import std.math.abs

func test_kurtosis() {
    let res = DataStatistics4.kurtosis(ArrayList<Float64>([1.0, 2.0, 5.0]))
    if (abs(res - (-1.5000000000000002)) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_kurtosis_2() {
    let res = DataStatistics4.kurtosis(ArrayList<Float64>([1.0, 1.0, 1.0]))
    if (!res.isNaN()) {
        throw Exception("Test failed!")
    }
}

func test_kurtosis_3() {
    let res = DataStatistics4.kurtosis(ArrayList<Float64>([1.0, 2.0, 3.0]))
    if (abs(res - (-1.5000000000000002)) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_kurtosis_4() {
    let res = DataStatistics4.kurtosis(ArrayList<Float64>([1.0, 2.0, 4.0]))
    if (abs(res - (-1.4999999999999996)) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_kurtosis_5() {
    let res = DataStatistics4.kurtosis(ArrayList<Float64>([1.0, 5.0, 3.0]))
    if (abs(res - (-1.5000000000000002)) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_kurtosis()
    test_kurtosis_2()
    test_kurtosis_3()
    test_kurtosis_4()
    test_kurtosis_5()
}
