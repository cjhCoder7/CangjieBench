func test_metricscalculator() {
    let mc = MetricsCalculator()
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (0, 0, 0, 0)) {
        throw Exception("Test failed!")
    }
    mc.update(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if ((mc.true_positives, mc.false_positives, mc.false_negatives, mc.true_negatives) != (1, 1, 1, 1)) {
        throw Exception("Test failed!")
    }
    let temp1 = mc.precision(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp1 - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
    let temp2 = mc.recall(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp2 - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
    let temp3 = mc.f1_score(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp3 - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
    let temp4 = mc.accuracy(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp4 - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_metricscalculator()
}