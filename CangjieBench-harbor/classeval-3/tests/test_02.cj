import std.collection.ArrayList

func test_select_1() {
    let ac = ArrangementCalculator(ArrayList<Int64>([1, 2, 3, 4]))
    let res = ac.select(Some(2))
    let expected = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2]), ArrayList<Int64>([1, 3]), ArrayList<Int64>([1, 4]), ArrayList<Int64>([2, 1]), ArrayList<Int64>([2, 3]), ArrayList<Int64>([2, 4]), ArrayList<Int64>([3, 1]), ArrayList<Int64>([3, 2]), ArrayList<Int64>([3, 4]), ArrayList<Int64>([4, 1]), ArrayList<Int64>([4, 2]), ArrayList<Int64>([4, 3])])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_2() {
    let ac = ArrangementCalculator(ArrayList<Int64>([1, 2, 3]))
    let res = ac.select(Some(2))
    let expected = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2]), ArrayList<Int64>([1, 3]), ArrayList<Int64>([2, 1]), ArrayList<Int64>([2, 3]), ArrayList<Int64>([3, 1]), ArrayList<Int64>([3, 2])])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_3() {
    let ac = ArrangementCalculator(ArrayList<Int64>([2, 3, 4]))
    let res = ac.select(Some(2))
    let expected = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([2, 3]), ArrayList<Int64>([2, 4]), ArrayList<Int64>([3, 2]), ArrayList<Int64>([3, 4]), ArrayList<Int64>([4, 2]), ArrayList<Int64>([4, 3])])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_4() {
    let ac = ArrangementCalculator(ArrayList<Int64>([1, 2]))
    let res = ac.select(Some(2))
    let expected = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2]), ArrayList<Int64>([2, 1])])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_5() {
    let ac = ArrangementCalculator(ArrayList<Int64>([1, 2, 3, 4]))
    let res = ac.select(Some(1))
    let expected = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1]), ArrayList<Int64>([2]), ArrayList<Int64>([3]), ArrayList<Int64>([4])])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_6() {
    let ac = ArrangementCalculator(ArrayList<Int64>([1, 2]))
    let res = ac.select(None)
    let expected = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2]), ArrayList<Int64>([2, 1])])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_select_1()
    test_select_2()
    test_select_3()
    test_select_4()
    test_select_5()
    test_select_6()
}
