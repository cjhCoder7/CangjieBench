import std.collection.ArrayList
import std.math.abs

func test_metricscalculator2_1() {
    let (res1, res2) = MetricsCalculator2.mrr((ArrayList<Int64>([1, 0, 1, 0]), 4))
    if (abs(res1 - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([1.0])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_metricscalculator2_2() {
    let input = ArrayList<(ArrayList<Int64>, Int64)>()
    input.add((ArrayList<Int64>([1, 0, 1, 0]), 4))
    input.add((ArrayList<Int64>([0, 1, 0, 1]), 4))
    let (res1, res2) = MetricsCalculator2.mrr(input)
    if (abs(res1 - 0.75) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([1.0, 0.5])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_metricscalculator2_3() {
    let (res1, res2) = MetricsCalculator2.map((ArrayList<Int64>([1, 0, 1, 0]), 4))
    if (abs(res1 - 0.41666666666666663) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.41666666666666663])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_metricscalculator2_4() {
    let input = ArrayList<(ArrayList<Int64>, Int64)>()
    input.add((ArrayList<Int64>([1, 0, 1, 0]), 4))
    input.add((ArrayList<Int64>([0, 1, 0, 1]), 4))
    let (res1, res2) = MetricsCalculator2.map(input)
    if (abs(res1 - 0.3333333333333333) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.41666666666666663, 0.25])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_metricscalculator2_1()
    test_metricscalculator2_2()
    test_metricscalculator2_3()
    test_metricscalculator2_4()
}
