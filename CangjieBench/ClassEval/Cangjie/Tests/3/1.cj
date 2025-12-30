func test_count_all_1() {
    let res = ArrangementCalculator.count_all(4)
    if (res != 64) {
        throw Exception("Test failed!")
    }
}

func test_count_all_2() {
    let res = ArrangementCalculator.count_all(1)
    if (res != 1) {
        throw Exception("Test failed!")
    }
}

func test_count_all_3() {
    let res = ArrangementCalculator.count_all(2)
    if (res != 4) {
        throw Exception("Test failed!")
    }
}

func test_count_all_4() {
    let res = ArrangementCalculator.count_all(3)
    if (res != 15) {
        throw Exception("Test failed!")
    }
}

func test_count_all_5() {
    let res = ArrangementCalculator.count_all(5)
    if (res != 325) {
        throw Exception("Test failed!")
    }
}

main() {
    test_count_all_1()
    test_count_all_2()
    test_count_all_3()
    test_count_all_4()
    test_count_all_5()
}