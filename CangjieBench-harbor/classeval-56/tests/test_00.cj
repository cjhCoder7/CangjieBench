import std.collection.ArrayList
import std.math.abs

func test_update_1() {
    let mc = MetricsCalculator()
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (0, 0, 0, 0)) {
        throw Exception("Test failed!")
    }
    mc.update(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (1, 1, 1, 1)) {
        throw Exception("Test failed!")
    }
}

func test_update_2() {
    let mc = MetricsCalculator()
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (0, 0, 0, 0)) {
        throw Exception("Test failed!")
    }
    mc.update(ArrayList<Int64>([1, 1, 1, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (1, 2, 1, 0)) {
        throw Exception("Test failed!")
    }
}

func test_update_3() {
    let mc = MetricsCalculator()
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (0, 0, 0, 0)) {
        throw Exception("Test failed!")
    }
    mc.update(ArrayList<Int64>([1, 1, 0, 1]), ArrayList<Int64>([1, 0, 0, 1]))
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (2, 1, 0, 1)) {
        throw Exception("Test failed!")
    }
}

func test_update_4() {
    let mc = MetricsCalculator()
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (0, 0, 0, 0)) {
        throw Exception("Test failed!")
    }
    mc.update(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 1, 0, 1]))
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (2, 0, 1, 1)) {
        throw Exception("Test failed!")
    }
}

func test_update_5() {
    let mc = MetricsCalculator()
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (0, 0, 0, 0)) {
        throw Exception("Test failed!")
    }
    mc.update(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 1, 1]))
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (1, 1, 2, 0)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_update_1()
    test_update_2()
    test_update_3()
    test_update_4()
    test_update_5()
}
