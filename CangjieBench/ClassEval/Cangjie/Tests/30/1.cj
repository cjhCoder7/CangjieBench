func test_get_min_1() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
    let res = ds2.get_min()
    if (res != 1.0) {
        throw Exception("Test failed!")
    }
}

func test_get_min_2() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 203.0, 4.0]))
    let res = ds2.get_min()
    if (res != 1.0) {
        throw Exception("Test failed!")
    }
}

func test_get_min_3() {
    let ds2 = DataStatistics2(ArrayList<Float64>([0.0, -1.0, -3.0, 2.0]))
    let res = ds2.get_min()
    if (res != -3.0) {
        throw Exception("Test failed!")
    }
}

func test_get_min_4() {
    let ds2 = DataStatistics2(ArrayList<Float64>([-111.0, -1.0, -3.0, 2.0]))
    let res = ds2.get_min()
    if (res != -111.0) {
        throw Exception("Test failed!")
    }
}

func test_get_min_5() {
    let ds2 = DataStatistics2(ArrayList<Float64>([0.0, -1111.0, -3.0, 2.0]))
    let res = ds2.get_min()
    if (res != -1111.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_min_1()
    test_get_min_2()
    test_get_min_3()
    test_get_min_4()
    test_get_min_5()
}
