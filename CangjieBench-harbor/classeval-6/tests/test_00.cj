import std.collection.ArrayList

func test_setNum() {
    let a = AvgPartition(ArrayList<Int64>([1, 2, 3, 4]), 2)
    if (a.setNum() != (2, 0)) {
        throw Exception("Test failed!")
    }
}

func test_setNum_2() {
    let a = AvgPartition(ArrayList<Int64>([1, 2, 3, 4, 5]), 2)
    if (a.setNum() != (2, 1)) {
        throw Exception("Test failed!")
    }
}

func test_setNum_3() {
    let a = AvgPartition(ArrayList<Int64>([1, 2, 3, 4, 5]), 3)
    if (a.setNum() != (1, 2)) {
        throw Exception("Test failed!")
    }
}

func test_setNum_4() {
    let a = AvgPartition(ArrayList<Int64>([1, 2, 3, 4, 5]), 4)
    if (a.setNum() != (1, 1)) {
        throw Exception("Test failed!")
    }
}

func test_setNum_5() {
    let a = AvgPartition(ArrayList<Int64>([1, 2, 3, 4, 5]), 5)
    if (a.setNum() != (1, 0)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_setNum()
    test_setNum_2()
    test_setNum_3()
    test_setNum_4()
    test_setNum_5()
}
