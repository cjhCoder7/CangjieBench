func test_skewness() {
    let res = DataStatistics4.skewness(ArrayList<Float64>([1.0, 2.0, 5.0]))
    if (abs(res - 2.3760224064818463) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_skewness_2() {
    let res = DataStatistics4.skewness(ArrayList<Float64>([1.0, 1.0, 1.0]))
    if (abs(res - 0.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_skewness_3() {
    let res = DataStatistics4.skewness(ArrayList<Float64>([1.0, 2.0, 3.0]))
    if (abs(res - 0.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_skewness_4() {
    let res = DataStatistics4.skewness(ArrayList<Float64>([1.0, 2.0, 4.0]))
    if (abs(res - 1.7181079837227264) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_skewness_5() {
    let res = DataStatistics4.skewness(ArrayList<Float64>([1.0, 5.0, 3.0]))
    if (abs(res - 0.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_skewness()
    test_skewness_2()
    test_skewness_3()
    test_skewness_4()
    test_skewness_5()
}