import std.collection.ArrayList

func test_select2() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C", "D"]))
    var result = ArrayList<ArrayList<String>>()
    calc._select(0, ArrayList<String>(["", ""]), 0, result)
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["A", "B"]), ArrayList<String>(["A", "C"]), ArrayList<String>(["A", "D"]), ArrayList<String>(["B", "C"]), ArrayList<String>(["B", "D"]), ArrayList<String>(["C", "D"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select2_2() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C", "D"]))
    var result = ArrayList<ArrayList<String>>()
    calc._select(0, ArrayList<String>(["", "", ""]), 0, result)
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["A", "B", "C"]), ArrayList<String>(["A", "B", "D"]), ArrayList<String>(["A", "C", "D"]), ArrayList<String>(["B", "C", "D"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select2_3() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C", "D"]))
    var result = ArrayList<ArrayList<String>>()
    calc._select(0, ArrayList<String>([""]), 0, result)
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["A"]), ArrayList<String>(["B"]), ArrayList<String>(["C"]), ArrayList<String>(["D"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select2_4() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C", "D"]))
    var result = ArrayList<ArrayList<String>>()
    calc._select(0, ArrayList<String>(), 0, result)
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>()])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select2_5() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C", "D"]))
    var result = ArrayList<ArrayList<String>>()
    calc._select(0, ArrayList<String>(["", "", "", ""]), 0, result)
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["A", "B", "C", "D"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_select2()
    test_select2_2()
    test_select2_3()
    test_select2_4()
    test_select2_5()
}
