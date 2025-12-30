func test_median() {
    if (abs(Statistics3.median(ArrayList<Int64>([1, 2, 3, 4])) - 2.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_median_2() {
    if (abs(Statistics3.median(ArrayList<Int64>([1, 2, 3, 4, 5])) - 3.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_median_3() {
    if (abs(Statistics3.median(ArrayList<Int64>([1, 2, 3, 4, 5, 6])) - 3.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_median_4() {
    if (abs(Statistics3.median(ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7])) - 4.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_median_5() {
    if (abs(Statistics3.median(ArrayList<Int64>([1, 2, 3, 4, 5, 6, 7, 8])) - 4.5) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_median()
    test_median_2()
    test_median_3()
    test_median_4()
    test_median_5()
}