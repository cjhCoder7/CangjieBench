func test_count_all() {
    if (CombinationCalculator.count_all(4) != 15) {
        throw Exception("Test failed!")
    }
}

func test_count_all_2() {
    if (CombinationCalculator.count_all(-1) != Int64.Min) {
        throw Exception("Test failed!")
    }
}

func test_count_all_3() {
    if (CombinationCalculator.count_all(65) != Int64.Min) {
        throw Exception("Test failed!")
    }
}

func test_count_all_4() {
    if (CombinationCalculator.count_all(0) != 0) {
        throw Exception("Test failed!")
    }
}

func test_count_all_5() {
    if (CombinationCalculator.count_all(63) != Int64.Max) {
        throw Exception("Test failed!")
    }
}

main() {
    test_count_all()
    test_count_all_2()
    test_count_all_3()
    test_count_all_4()
    test_count_all_5()
}