func test_median_1() {
    let ds = DataStatistics()
    let res = ds.median(ArrayList<Int64>([2, 5, 1, 3, 4]))
    if (res != 3.0) {
        throw Exception("Test failed!")
    }
}

func test_median_2() {
    let ds = DataStatistics()
    let res = ds.median(ArrayList<Int64>([2, 5, 1, 3, 4, 6]))
    if (abs(res - 3.50) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_median_3() {
    let ds = DataStatistics()
    let res = ds.median(ArrayList<Int64>([2, 5, 1, 4, 6, 7]))
    if (abs(res - 4.5) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_median_4() {
    let ds = DataStatistics()
    let res = ds.median(ArrayList<Int64>([2, 5, 1, 4, 6, 7, 8]))
    if (res != 5.0) {
        throw Exception("Test failed!")
    }
}

func test_median_5() {
    let ds = DataStatistics()
    let res = ds.median(ArrayList<Int64>([2, 5, 1, 4, 6, 7, 8, 9]))
    if (abs(res - 5.5) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_median_1()
    test_median_2()
    test_median_3()
    test_median_4()
    test_median_5()
}