import std.collection.ArrayList

func test_arrangementcalculator() {
    let res1 = ArrangementCalculator.count(5, Some(3))
    if (res1 != 60) {
        throw Exception("Test failed!")
    }

    let res2 = ArrangementCalculator.count_all(4)
    if (res2 != 64) {
        throw Exception("Test failed!")
    }

    let ac1 = ArrangementCalculator(ArrayList<Int64>([1, 2, 3, 4]))
    let res3 = ac1.select(Some(2))
    let expected1 = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2]), ArrayList<Int64>([1, 3]), ArrayList<Int64>([1, 4]), ArrayList<Int64>([2, 1]), ArrayList<Int64>([2, 3]), ArrayList<Int64>([2, 4]), ArrayList<Int64>([3, 1]), ArrayList<Int64>([3, 2]), ArrayList<Int64>([3, 4]), ArrayList<Int64>([4, 1]), ArrayList<Int64>([4, 2]), ArrayList<Int64>([4, 3])])
    if (res3 != expected1) {
        throw Exception("Test failed!")
    }

    let ac2 = ArrangementCalculator(ArrayList<Int64>([1, 2, 3]))
    let res4 = ac2.select_all()
    let expected2 = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1]), ArrayList<Int64>([2]), ArrayList<Int64>([3]), ArrayList<Int64>([1, 2]), ArrayList<Int64>([1, 3]), ArrayList<Int64>([2, 1]), ArrayList<Int64>([2, 3]), ArrayList<Int64>([3, 1]), ArrayList<Int64>([3, 2]), ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([1, 3, 2]), ArrayList<Int64>([2, 1, 3]), ArrayList<Int64>([2, 3, 1]), ArrayList<Int64>([3, 1, 2]), ArrayList<Int64>([3, 2, 1])])
    if (res4 != expected2) {
        throw Exception("Test failed!")
    }

    let res5 = ArrangementCalculator.factorial(4)
    if (res5 != 24) {
        throw Exception("Test failed!")
    }
}

main() {
    test_arrangementcalculator()
}
