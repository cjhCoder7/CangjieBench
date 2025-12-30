func test_mode_1() {
    let ds = DataStatistics()
    let res = ds.mode(ArrayList<Int64>([2, 2, 3, 3, 4]))
    let expected = ArrayList<Int64>([2, 3])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_mode_2() {
    let ds = DataStatistics()
    let res = ds.mode(ArrayList<Int64>([2, 2, 2, 3, 3, 4]))
    let expected = ArrayList<Int64>([2])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_mode_3() {
    let ds = DataStatistics()
    let res = ds.mode(ArrayList<Int64>([2, 2, 3, 3, 4, 4]))
    let expected = ArrayList<Int64>([2, 3, 4])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_mode_4() {
    let ds = DataStatistics()
    let res = ds.mode(ArrayList<Int64>([2, 2, 3, 3, 4, 4, 4]))
    let expected = ArrayList<Int64>([4])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_mode_5() {
    let ds = DataStatistics()
    let res = ds.mode(ArrayList<Int64>([2, 2, 3, 3, 4, 4, 4, 5]))
    let expected = ArrayList<Int64>([4])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_mode_1()
    test_mode_2()
    test_mode_3()
    test_mode_4()
    test_mode_5()
}