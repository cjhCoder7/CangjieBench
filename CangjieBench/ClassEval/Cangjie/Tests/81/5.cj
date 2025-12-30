func test_standard_deviation() {
    if (abs((Statistics3.standard_deviation(ArrayList<Int64>([1, 2, 3])) ?? 0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_standard_deviation_2() {
    if (abs((Statistics3.standard_deviation(ArrayList<Int64>([1, 1, 1])) ?? 0.0) - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_standard_deviation_3() {
    if (abs((Statistics3.standard_deviation(ArrayList<Int64>([1, 1])) ?? 0.0) - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_standard_deviation_4() {
    if (abs((Statistics3.standard_deviation(ArrayList<Int64>([1, 1, 1, 1])) ?? 0.0) - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_standard_deviation_5() {
    if (abs((Statistics3.standard_deviation(ArrayList<Int64>([1, 1, 2, 1, 4])) ?? 0.0) - 1.3038404810405297) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_standard_deviation()
    test_standard_deviation_2()
    test_standard_deviation_3()
    test_standard_deviation_4()
    test_standard_deviation_5()
}