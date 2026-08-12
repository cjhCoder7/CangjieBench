import std.collection.ArrayList

func test_get() {
    let a = AvgPartition(ArrayList<Int64>([1, 2, 3, 4]), 2)
    if (a.get(0) != ArrayList<Int64>([1, 2])) {
        throw Exception("Test failed!")
    }
}

func test_get_2() {
    let a = AvgPartition(ArrayList<Int64>([1, 2, 3, 4]), 2)
    if (a.get(1) != ArrayList<Int64>([3, 4])) {
        throw Exception("Test failed!")
    }
}

func test_get_3() {
    let a = AvgPartition(ArrayList<Int64>([1, 2, 3, 4, 5]), 2)
    if (a.get(0) != ArrayList<Int64>([1, 2, 3])) {
        throw Exception("Test failed!")
    }
}

func test_get_4() {
    let a = AvgPartition(ArrayList<Int64>([1, 2, 3, 4, 5]), 2)
    if (a.get(1) != ArrayList<Int64>([4, 5])) {
        throw Exception("Test failed!")
    }
}

func test_get_5() {
    let a = AvgPartition(ArrayList<Int64>([1, 2, 3, 4, 5]), 3)
    if (a.get(0) != ArrayList<Int64>([1, 2])) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get()
    test_get_2()
    test_get_3()
    test_get_4()
    test_get_5()
}
