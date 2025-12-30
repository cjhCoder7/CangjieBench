func test_select() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C", "D"]))
    let result = calc.select(2)
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["A", "B"]), ArrayList<String>(["A", "C"]), ArrayList<String>(["A", "D"]), ArrayList<String>(["B", "C"]), ArrayList<String>(["B", "D"]), ArrayList<String>(["C", "D"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_2() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C", "D"]))
    let result = calc.select(3)
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["A", "B", "C"]), ArrayList<String>(["A", "B", "D"]), ArrayList<String>(["A", "C", "D"]), ArrayList<String>(["B", "C", "D"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_3() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C", "D"]))
    let result = calc.select(1)
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["A"]), ArrayList<String>(["B"]), ArrayList<String>(["C"]), ArrayList<String>(["D"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_4() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C", "D"]))
    let result = calc.select(0)
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>()])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_select_5() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C", "D"]))
    let result = calc.select(4)
    let expected = ArrayList<ArrayList<String>>([ArrayList<String>(["A", "B", "C", "D"])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_select()
    test_select_2()
    test_select_3()
    test_select_4()
    test_select_5()
}