func test_accuracy_1() {
    let mc = MetricsCalculator()
    let temp = mc.accuracy(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 0.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_accuracy_2() {
    let mc = MetricsCalculator()
    let temp = mc.accuracy(ArrayList<Int64>([1, 1, 2, 0]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 0.3333333333333333) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_accuracy_3() {
    let mc = MetricsCalculator()
    let temp = mc.accuracy(ArrayList<Int64>([1, 1, 0, 1]), ArrayList<Int64>([1, 0, 0, 1]))
    if (abs(temp - 0.75) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_accuracy_4() {
    let mc = MetricsCalculator()
    let temp = mc.accuracy(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 1, 0, 1]))
    if (abs(temp - 0.75) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_accuracy_5() {
    let mc = MetricsCalculator()
    let temp = mc.accuracy(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 1, 1]))
    if (abs(temp - 0.25) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_accuracy_6() {
    let mc = MetricsCalculator()
    let temp = mc.accuracy(ArrayList<Int64>(), ArrayList<Int64>())
    if (abs(temp - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_accuracy_1()
    test_accuracy_2()
    test_accuracy_3()
    test_accuracy_4()
    test_accuracy_5()
    test_accuracy_6()
}