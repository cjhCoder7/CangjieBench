import std.collection.ArrayList

func test_count_1() {
    let res = ArrangementCalculator.count(5, Some(3))
    if (res != 60) {
        throw Exception("Test failed!")
    }
}

func test_count_2() {
    let res = ArrangementCalculator.count(4, Some(3))
    if (res != 24) {
        throw Exception("Test failed!")
    }
}

func test_count_3() {
    let res = ArrangementCalculator.count(6, Some(3))
    if (res != 120) {
        throw Exception("Test failed!")
    }
}

func test_count_4() {
    let res = ArrangementCalculator.count(7, Some(3))
    if (res != 210) {
        throw Exception("Test failed!")
    }
}

func test_count_5() {
    let res = ArrangementCalculator.count(4, Some(4))
    if (res != 24) {
        throw Exception("Test failed!")
    }
}

main() {
    test_count_1()
    test_count_2()
    test_count_3()
    test_count_4()
    test_count_5()
}
