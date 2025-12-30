func test_get_sum_1() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
    let res = ds2.get_sum()
    if (res != 10.0) {
        throw Exception("Test failed!")
    }
}

func test_get_sum_2() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 203.0, 4.0]))
    let res = ds2.get_sum()
    if (res != 210.0) {
        throw Exception("Test failed!")
    }
}

func test_get_sum_3() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 33.0, 4.0]))
    let res = ds2.get_sum()
    if (res != 40.0) {
        throw Exception("Test failed!")
    }
}

func test_get_sum_4() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 333.0, 4.0]))
    let res = ds2.get_sum()
    if (res != 340.0) {
        throw Exception("Test failed!")
    }
}

func test_get_sum_5() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 6.0, 4.0]))
    let res = ds2.get_sum()
    if (res != 13.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_sum_1()
    test_get_sum_2()
    test_get_sum_3()
    test_get_sum_4()
    test_get_sum_5()
}
