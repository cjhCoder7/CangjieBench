func test_recall_1() {
    let mc = MetricsCalculator()
    let temp = mc.recall(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_recall_2() {
    let mc = MetricsCalculator()
    let temp = mc.recall(ArrayList<Int64>([1, 1, 1, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_recall_3() {
    let mc = MetricsCalculator()
    let temp = mc.recall(ArrayList<Int64>([1, 1, 0, 1]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_recall_4() {
    let mc = MetricsCalculator()
    let temp = mc.recall(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 1, 0, 1]))
    if (abs(temp - 0.6666666666666666) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_recall_5() {
    let mc = MetricsCalculator()
    let temp = mc.recall(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 1, 1]))
    if (abs(temp - 0.3333333333333333) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_recall_6() {
    let mc = MetricsCalculator()
    let temp = mc.recall(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([0, 0, 0, 0]))
    if (abs(temp - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_recall_1()
    test_recall_2()
    test_recall_3()
    test_recall_4()
    test_recall_5()
    test_recall_6()
}