func test_get_possible_moves_1() {
    let eightPuzzle = EightPuzzle(ArrayList<ArrayList<Int64>>())
    let state = ArrayList<ArrayList<Int64>>()
    state.add(ArrayList<Int64>([2, 3, 4]))
    state.add(ArrayList<Int64>([5, 0, 1]))
    state.add(ArrayList<Int64>([6, 8, 7]))
    let result = eightPuzzle.get_possible_moves(state)
    let expected = ArrayList<String>(["up", "down", "left", "right"])
    for (direction in result) {
        if (!expected.contains(direction)) {
            throw Exception("Test failed!")
        }
    }
}

func test_get_possible_moves_2() {
    let eightPuzzle = EightPuzzle(ArrayList<ArrayList<Int64>>())
    let state = ArrayList<ArrayList<Int64>>()
    state.add(ArrayList<Int64>([2, 3, 4]))
    state.add(ArrayList<Int64>([5, 8, 1]))
    state.add(ArrayList<Int64>([6, 0, 7]))
    let result = eightPuzzle.get_possible_moves(state)
    let expected = ArrayList<String>(["up", "left", "right"])
    for (direction in result) {
        if (!expected.contains(direction)) {
            throw Exception("Test failed!")
        }
    }
}

func test_get_possible_moves_3() {
    let eightPuzzle = EightPuzzle(ArrayList<ArrayList<Int64>>())
    let state = ArrayList<ArrayList<Int64>>()
    state.add(ArrayList<Int64>([2, 0, 4]))
    state.add(ArrayList<Int64>([5, 3, 1]))
    state.add(ArrayList<Int64>([6, 8, 7]))
    let result = eightPuzzle.get_possible_moves(state)
    let expected = ArrayList<String>(["down", "left", "right"])
    for (direction in result) {
        if (!expected.contains(direction)) {
            throw Exception("Test failed!")
        }
    }
}

func test_get_possible_moves_4() {
    let eightPuzzle = EightPuzzle(ArrayList<ArrayList<Int64>>())
    let state = ArrayList<ArrayList<Int64>>()
    state.add(ArrayList<Int64>([2, 3, 4]))
    state.add(ArrayList<Int64>([5, 1, 0]))
    state.add(ArrayList<Int64>([6, 8, 7]))
    let result = eightPuzzle.get_possible_moves(state)
    let expected = ArrayList<String>(["up", "down", "left"])
    for (direction in result) {
        if (!expected.contains(direction)) {
            throw Exception("Test failed!")
        }
    }
}

func test_get_possible_moves_5() {
    let eightPuzzle = EightPuzzle(ArrayList<ArrayList<Int64>>())
    let state = ArrayList<ArrayList<Int64>>()
    state.add(ArrayList<Int64>([2, 3, 4]))
    state.add(ArrayList<Int64>([0, 5, 1]))
    state.add(ArrayList<Int64>([6, 8, 7]))
    let result = eightPuzzle.get_possible_moves(state)
    let expected = ArrayList<String>(["up", "down", "right"])
    for (direction in result) {
        if (!expected.contains(direction)) {
            throw Exception("Test failed!")
        }
    }
}

main() {
    test_get_possible_moves_1()
    test_get_possible_moves_2()
    test_get_possible_moves_3()
    test_get_possible_moves_4()
    test_get_possible_moves_5()
}