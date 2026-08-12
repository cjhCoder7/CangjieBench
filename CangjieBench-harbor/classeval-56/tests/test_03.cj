import std.collection.ArrayList
import std.math.abs

func test_f1_score_1() {
    let mc = MetricsCalculator()
    let temp = mc.f1_score(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_f1_score_2() {
    let mc = MetricsCalculator()
    let temp = mc.f1_score(ArrayList<Int64>([1, 1, 1, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 0.4) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_f1_score_3() {
    let mc = MetricsCalculator()
    let temp = mc.f1_score(ArrayList<Int64>([1, 1, 0, 1]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 0.8) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_f1_score_4() {
    let mc = MetricsCalculator()
    let temp = mc.f1_score(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 1, 0, 1]))
    if (abs(temp - 0.8) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_f1_score_5() {
    let mc = MetricsCalculator()
    let temp = mc.f1_score(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 1, 1]))
    if (abs(temp - 0.4) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_f1_score_6() {
    let mc = MetricsCalculator()
    let temp = mc.f1_score(ArrayList<Int64>([0, 0, 0, 0]), ArrayList<Int64>([0, 0, 0, 0]))
    if (abs(temp - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_f1_score_1()
    test_f1_score_2()
    test_f1_score_3()
    test_f1_score_4()
    test_f1_score_5()
    test_f1_score_6()
}
