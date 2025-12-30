func test_main() {
    let calc = CombinationCalculator(ArrayList<String>(["A", "B", "C", "D"]))
    if (CombinationCalculator.count(4, 2) != 6) {
        throw Exception("Test failed!")
    }
    if (CombinationCalculator.count_all(4) != 15) {
        throw Exception("Test failed!")
    }
    let result1 = calc.select(2)
    let expected1 = ArrayList<ArrayList<String>>([ArrayList<String>(["A", "B"]), ArrayList<String>(["A", "C"]), ArrayList<String>(["A", "D"]), ArrayList<String>(["B", "C"]), ArrayList<String>(["B", "D"]), ArrayList<String>(["C", "D"])])
    if (result1 != expected1) {
        throw Exception("Test failed!")
    }
    let result2 = calc.select_all()
    let expected2 = ArrayList<ArrayList<String>>([ArrayList<String>(["A"]), ArrayList<String>(["B"]), ArrayList<String>(["C"]), ArrayList<String>(["D"]), ArrayList<String>(["A", "B"]), ArrayList<String>(["A", "C"]), ArrayList<String>(["A", "D"]), ArrayList<String>(["B", "C"]), ArrayList<String>(["B", "D"]), ArrayList<String>(["C", "D"]), ArrayList<String>(["A", "B", "C"]), ArrayList<String>(["A", "B", "D"]), ArrayList<String>(["A", "C", "D"]), ArrayList<String>(["B", "C", "D"]), ArrayList<String>(["A", "B", "C", "D"])])
    if (result2 != expected2) {
        throw Exception("Test failed!")
    }
    var result3 = ArrayList<ArrayList<String>>()
    calc._select(0, ArrayList<String>(["", ""]), 0, result3)
    let expected3 = ArrayList<ArrayList<String>>([ArrayList<String>(["A", "B"]), ArrayList<String>(["A", "C"]), ArrayList<String>(["A", "D"]), ArrayList<String>(["B", "C"]), ArrayList<String>(["B", "D"]), ArrayList<String>(["C", "D"])])
    if (result3 != expected3) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}