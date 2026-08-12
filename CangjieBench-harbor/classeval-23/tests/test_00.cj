import std.collection.ArrayList

func test_count() {
    if (CombinationCalculator.count(4, 2) != 6) {
        throw Exception("Test failed!")
    }
}

func test_count_2() {
    if (CombinationCalculator.count(5, 3) != 10) {
        throw Exception("Test failed!")
    }
}

func test_count_3() {
    if (CombinationCalculator.count(6, 6) != 1) {
        throw Exception("Test failed!")
    }
}

func test_count_4() {
    if (CombinationCalculator.count(6, 0) != 1) {
        throw Exception("Test failed!")
    }
}

func test_count_5() {
    if (CombinationCalculator.count(6, 3) != 20) {
        throw Exception("Test failed!")
    }
}

main() {
    test_count()
    test_count_2()
    test_count_3()
    test_count_4()
    test_count_5()
}
