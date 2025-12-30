func test_correlation() {
    if (abs((Statistics3.correlation(ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6])) ?? 0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_correlation_2() {
    if (abs((Statistics3.correlation(ArrayList<Int64>([1, 2, 3, 4]), ArrayList<Int64>([5, 6, 7, 8])) ?? 0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_correlation_3() {
    if (abs((Statistics3.correlation(ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([1, 2, 3])) ?? 0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_correlation_4() {
    if (Statistics3.correlation(ArrayList<Int64>([1, 1, 1]), ArrayList<Int64>([2, 2, 2])) != None) {
        throw Exception("Test failed!")
    }
}

func test_correlation_5() {
    if (Statistics3.correlation(ArrayList<Int64>([1, 1, 1]), ArrayList<Int64>([1, 1, 1])) != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_correlation()
    test_correlation_2()
    test_correlation_3()
    test_correlation_4()
    test_correlation_5()
}