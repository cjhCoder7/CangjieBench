func test_find_blank_1() {
    let state = ArrayList<ArrayList<Int64>>()
    state.add(ArrayList<Int64>([2, 3, 4]))
    state.add(ArrayList<Int64>([5, 8, 1]))
    state.add(ArrayList<Int64>([6, 0, 7]))
    let eightPuzzle = EightPuzzle(state)
    let result = eightPuzzle.find_blank(state)
    if (result != (2, 1)) {
        throw Exception("Test failed!")
    }
}

func test_find_blank_2() {
    let state = ArrayList<ArrayList<Int64>>()
    state.add(ArrayList<Int64>([2, 3, 4]))
    state.add(ArrayList<Int64>([5, 0, 1]))
    state.add(ArrayList<Int64>([6, 8, 7]))
    let eightPuzzle = EightPuzzle(state)
    let result = eightPuzzle.find_blank(state)
    if (result != (1, 1)) {
        throw Exception("Test failed!")
    }
}

func test_find_blank_3() {
    let state = ArrayList<ArrayList<Int64>>()
    state.add(ArrayList<Int64>([2, 3, 4]))
    state.add(ArrayList<Int64>([5, 8, 1]))
    state.add(ArrayList<Int64>([6, 8, 7]))
    let eightPuzzle = EightPuzzle(state)
    let result = eightPuzzle.find_blank(state)
    if (result != (0, 0)) {
        throw Exception("Test failed!")
    }
}

func test_find_blank_4() {
    let state = ArrayList<ArrayList<Int64>>()
    state.add(ArrayList<Int64>([2, 3, 4]))
    state.add(ArrayList<Int64>([5, 8, 1]))
    state.add(ArrayList<Int64>([6, 8, 7]))
    let eightPuzzle = EightPuzzle(state)
    let result = eightPuzzle.find_blank(state)
    if (result != (0, 0)) {
        throw Exception("Test failed!")
    }
}

func test_find_blank_5() {
    let state = ArrayList<ArrayList<Int64>>()
    state.add(ArrayList<Int64>([2, 3, 4]))
    state.add(ArrayList<Int64>([5, 8, 1]))
    state.add(ArrayList<Int64>([6, 8, 7]))
    let eightPuzzle = EightPuzzle(state)
    let result = eightPuzzle.find_blank(state)
    if (result != (0, 0)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_find_blank_1()
    test_find_blank_2()
    test_find_blank_3()
    test_find_blank_4()
    test_find_blank_5()
}