import std.collection.ArrayList
import std.math.abs

func test_precision_1() {
    let mc = MetricsCalculator()
    let temp = mc.precision(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_precision_2() {
    let mc = MetricsCalculator()
    let temp = mc.precision(ArrayList<Int64>([1, 1, 1, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 0.3333333333333333) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_precision_3() {
    let mc = MetricsCalculator()
    let temp = mc.precision(ArrayList<Int64>([1, 1, 0, 1]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 0.6666666666666666) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_precision_4() {
    let mc = MetricsCalculator()
    let temp = mc.precision(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 1, 0, 1]))
    if (abs(temp - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_precision_5() {
    let mc = MetricsCalculator()
    let temp = mc.precision(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 1, 1]))
    if (abs(temp - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_precision_6() {
    let mc = MetricsCalculator()
    let temp = mc.precision(ArrayList<Int64>([0, 0, 0, 0]), ArrayList<Int64>([1, 0, 1, 1]))
    if (abs(temp - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_precision_1()
    test_precision_2()
    test_precision_3()
    test_precision_4()
    test_precision_5()
    test_precision_6()
}
