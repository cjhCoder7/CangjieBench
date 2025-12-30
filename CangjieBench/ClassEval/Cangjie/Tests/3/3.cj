func test_select_all_1() {
    let ac = ArrangementCalculator(ArrayList<Int64>([1, 2, 3]))
    let res = ac.select_all()
    let expected = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1]), ArrayList<Int64>([2]), ArrayList<Int64>([3]), ArrayList<Int64>([1, 2]), ArrayList<Int64>([1, 3]), ArrayList<Int64>([2, 1]), ArrayList<Int64>([2, 3]), ArrayList<Int64>([3, 1]), ArrayList<Int64>([3, 2]), ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([1, 3, 2]), ArrayList<Int64>([2, 1, 3]), ArrayList<Int64>([2, 3, 1]), ArrayList<Int64>([3, 1, 2]), ArrayList<Int64>([3, 2, 1])])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_all_2() {
    let ac = ArrangementCalculator(ArrayList<Int64>([1, 2, 4]))
    let res = ac.select_all()
    let expected = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1]), ArrayList<Int64>([2]), ArrayList<Int64>([4]), ArrayList<Int64>([1, 2]), ArrayList<Int64>([1, 4]), ArrayList<Int64>([2, 1]), ArrayList<Int64>([2, 4]), ArrayList<Int64>([4, 1]), ArrayList<Int64>([4, 2]), ArrayList<Int64>([1, 2, 4]), ArrayList<Int64>([1, 4, 2]), ArrayList<Int64>([2, 1, 4]), ArrayList<Int64>([2, 4, 1]), ArrayList<Int64>([4, 1, 2]), ArrayList<Int64>([4, 2, 1])])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_all_3() {
    let ac = ArrangementCalculator(ArrayList<Int64>([1, 2]))
    let res = ac.select_all()
    let expected = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1]), ArrayList<Int64>([2]), ArrayList<Int64>([1, 2]), ArrayList<Int64>([2, 1])])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_all_4() {
    let ac = ArrangementCalculator(ArrayList<Int64>([1, 3]))
    let res = ac.select_all()
    let expected = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1]), ArrayList<Int64>([3]), ArrayList<Int64>([1, 3]), ArrayList<Int64>([3, 1])])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_all_5() {
    let ac = ArrangementCalculator(ArrayList<Int64>([1]))
    let res = ac.select_all()
    let expected = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1])])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_select_all_1()
    test_select_all_2()
    test_select_all_3()
    test_select_all_4()
    test_select_all_5()
}