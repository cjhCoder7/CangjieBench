import std.collection.ArrayList

func test_solve_1() {
    let initialState = ArrayList<ArrayList<Int64>>()
    initialState.add(ArrayList<Int64>([1, 2, 3]))
    initialState.add(ArrayList<Int64>([4, 5, 6]))
    initialState.add(ArrayList<Int64>([7, 0, 8]))
    let eightPuzzle = EightPuzzle(initialState)
    let result = eightPuzzle.solve()
    let expected = ArrayList<String>(["right"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_solve_2() {
    let initialState = ArrayList<ArrayList<Int64>>()
    initialState.add(ArrayList<Int64>([1, 2, 3]))
    initialState.add(ArrayList<Int64>([4, 0, 6]))
    initialState.add(ArrayList<Int64>([7, 5, 8]))
    let eightPuzzle = EightPuzzle(initialState)
    let result = eightPuzzle.solve()
    let expected = ArrayList<String>(["down", "right"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_solve_3() {
    let initialState = ArrayList<ArrayList<Int64>>()
    initialState.add(ArrayList<Int64>([1, 2, 3]))
    initialState.add(ArrayList<Int64>([0, 4, 5]))
    initialState.add(ArrayList<Int64>([6, 7, 8]))
    let eightPuzzle = EightPuzzle(initialState)
    let result = eightPuzzle.solve()
    let expected = ArrayList<String>(["right", "right", "down", "left", "left", "up", "right", "down", "right", "up", "left", "left", "down", "right", "right"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_solve_4() {
    let initialState = ArrayList<ArrayList<Int64>>()
    initialState.add(ArrayList<Int64>([1, 2, 3]))
    initialState.add(ArrayList<Int64>([4, 5, 6]))
    initialState.add(ArrayList<Int64>([7, 8, 0]))
    let eightPuzzle = EightPuzzle(initialState)
    let result = eightPuzzle.solve()
    let expected = ArrayList<String>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_solve_5() {
    let initialState = ArrayList<ArrayList<Int64>>()
    initialState.add(ArrayList<Int64>([1, 2, 3]))
    initialState.add(ArrayList<Int64>([4, 5, 6]))
    initialState.add(ArrayList<Int64>([0, 7, 8]))
    let eightPuzzle = EightPuzzle(initialState)
    let result = eightPuzzle.solve()
    let expected = ArrayList<String>(["right", "right"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_solve_6() {
    let initialState = ArrayList<ArrayList<Int64>>()
    initialState.add(ArrayList<Int64>([0, 0, 0]))
    initialState.add(ArrayList<Int64>([0, 0, 0]))
    initialState.add(ArrayList<Int64>([0, 0, 0]))
    let eightPuzzle = EightPuzzle(initialState)
    let result = eightPuzzle.solve()
    if (result != ArrayList<String>()) {
        throw Exception("Test failed!")
    }
}

main() {
    test_solve_1()
    test_solve_2()
    test_solve_3()
    test_solve_4()
    test_solve_5()
    test_solve_6()
}
