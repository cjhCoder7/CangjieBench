func test_move_1() {
    let initial_state = ArrayList<ArrayList<Int64>>()
    initial_state.add(ArrayList<Int64>([2, 3, 4]))
    initial_state.add(ArrayList<Int64>([5, 0, 1]))
    initial_state.add(ArrayList<Int64>([6, 8, 7]))
    let eightPuzzle = EightPuzzle(initial_state)

    let result = eightPuzzle.move(initial_state, "up")
    let expected = ArrayList<ArrayList<Int64>>()
    expected.add(ArrayList<Int64>([2, 0, 4]))
    expected.add(ArrayList<Int64>([5, 3, 1]))
    expected.add(ArrayList<Int64>([6, 8, 7]))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_move_2() {
    let initial_state = ArrayList<ArrayList<Int64>>()
    initial_state.add(ArrayList<Int64>([2, 3, 4]))
    initial_state.add(ArrayList<Int64>([5, 0, 1]))
    initial_state.add(ArrayList<Int64>([6, 8, 7]))
    let eightPuzzle = EightPuzzle(initial_state)
    
    let result = eightPuzzle.move(initial_state, "down")
    let expected = ArrayList<ArrayList<Int64>>()
    expected.add(ArrayList<Int64>([2, 3, 4]))
    expected.add(ArrayList<Int64>([5, 8, 1]))
    expected.add(ArrayList<Int64>([6, 0, 7]))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_move_3() {
    let initial_state = ArrayList<ArrayList<Int64>>()
    initial_state.add(ArrayList<Int64>([2, 3, 4]))
    initial_state.add(ArrayList<Int64>([5, 0, 1]))
    initial_state.add(ArrayList<Int64>([6, 8, 7]))
    let eightPuzzle = EightPuzzle(initial_state)
    
    let result = eightPuzzle.move(initial_state, "left")
    let expected = ArrayList<ArrayList<Int64>>()
    expected.add(ArrayList<Int64>([2, 3, 4]))
    expected.add(ArrayList<Int64>([0, 5, 1]))
    expected.add(ArrayList<Int64>([6, 8, 7]))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_move_4() {
    let initial_state = ArrayList<ArrayList<Int64>>()
    initial_state.add(ArrayList<Int64>([2, 3, 4]))
    initial_state.add(ArrayList<Int64>([5, 0, 1]))
    initial_state.add(ArrayList<Int64>([6, 8, 7]))
    let eightPuzzle = EightPuzzle(initial_state)
    
    let result = eightPuzzle.move(initial_state, "right")
    let expected = ArrayList<ArrayList<Int64>>()
    expected.add(ArrayList<Int64>([2, 3, 4]))
    expected.add(ArrayList<Int64>([5, 1, 0]))
    expected.add(ArrayList<Int64>([6, 8, 7]))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_move_5() {
    let initial_state = ArrayList<ArrayList<Int64>>()
    initial_state.add(ArrayList<Int64>([2, 3, 4]))
    initial_state.add(ArrayList<Int64>([5, 0, 1]))
    initial_state.add(ArrayList<Int64>([6, 8, 7]))
    let eightPuzzle = EightPuzzle(initial_state)
    
    let result = eightPuzzle.move(initial_state, "???")
    let expected = ArrayList<ArrayList<Int64>>()
    expected.add(ArrayList<Int64>([2, 3, 4]))
    expected.add(ArrayList<Int64>([5, 0, 1]))
    expected.add(ArrayList<Int64>([6, 8, 7]))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_move_1()
    test_move_2()
    test_move_3()
    test_move_4()
    test_move_5()
}