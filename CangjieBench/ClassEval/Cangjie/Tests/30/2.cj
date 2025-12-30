func test_get_max_1() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
    let res = ds2.get_max()
    if (res != 4.0) {
        throw Exception("Test failed!")
    }
}

func test_get_max_2() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 203.0, 4.0]))
    let res = ds2.get_max()
    if (res != 203.0) {
        throw Exception("Test failed!")
    }
}

func test_get_max_3() {
    let ds2 = DataStatistics2(ArrayList<Float64>([-1.0, -4.0, 3.0, 2.0]))
    let res = ds2.get_max()
    if (res != 3.0) {
        throw Exception("Test failed!")
    }
}

func test_get_max_4() {
    let ds2 = DataStatistics2(ArrayList<Float64>([-1.0, 4.0, 3.0, 2.0]))
    let res = ds2.get_max()
    if (res != 4.0) {
        throw Exception("Test failed!")
    }
}

func test_get_max_5() {
    let ds2 = DataStatistics2(ArrayList<Float64>([-1.0, 444.0, 3.0, 2.0]))
    let res = ds2.get_max()
    if (res != 444.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_max_1()
    test_get_max_2()
    test_get_max_3()
    test_get_max_4()
    test_get_max_5()
}
