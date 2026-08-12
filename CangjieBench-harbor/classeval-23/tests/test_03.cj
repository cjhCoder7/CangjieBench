import std.collection.ArrayList

func test_select_all() {
    let calc = CombinationCalculator(ArrayList<String>(["A"]))
    let result = calc.select_all()
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["A"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_all_2() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B"]))
    let result = calc.select_all()
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["A"]), ArrayList<String>(["B"]), ArrayList<String>(["A", "B"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_all_3() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C"]))
    let result = calc.select_all()
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["A"]), ArrayList<String>(["B"]), ArrayList<String>(["C"]), ArrayList<String>(["A", "B"]), ArrayList<String>(["A", "C"]), ArrayList<String>(["B", "C"]), ArrayList<String>(["A", "B", "C"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_all_4() {
    let calc = CombinationCalculator(ArrayList<String>())
    let result = calc.select_all()
    let expected = ArrayList<ArrayList<String>>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_all_5() {
    let calc = CombinationCalculator(ArrayList<String>(["B"]))
    let result = calc.select_all()
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["B"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_select_all()
    test_select_all_2()
    test_select_all_3()
    test_select_all_4()
    test_select_all_5()
}
