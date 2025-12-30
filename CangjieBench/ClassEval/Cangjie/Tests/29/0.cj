func test_mean_1() {
    let ds = DataStatistics()
    let res = ds.mean(ArrayList<Int64>([1, 2, 3, 4, 5]))
    if (abs(res - 3.00) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_mean_2() {
    let ds = DataStatistics()
    let res = ds.mean(ArrayList<Int64>([1, 2, 3, 4, 5, 6]))
    if (abs(res - 3.50) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_mean_3() {
    let ds = DataStatistics()
    let res = ds.mean(ArrayList<Int64>([1, 2, 4, 5, 6, 7]))
    if (abs(res - 4.17) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_mean_4() {
    let ds = DataStatistics()
    let res = ds.mean(ArrayList<Int64>([1, 2, 4, 5, 6, 7, 8]))
    if (abs(res - 4.71) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_mean_5() {
    let ds = DataStatistics()
    let res = ds.mean(ArrayList<Int64>([1, 2, 4, 5, 6, 7, 8, 9]))
    if (abs(res - 5.25) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_mean_1()
    test_mean_2()
    test_mean_3()
    test_mean_4()
    test_mean_5()
}