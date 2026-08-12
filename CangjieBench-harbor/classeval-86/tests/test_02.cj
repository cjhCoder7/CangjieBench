import std.collection.ArrayList

func test_is_board_full_1() {
    let ttt = TicTacToe()
    if (ttt.is_board_full() != false) {
        throw Exception("Test failed!")
    }
}

func test_is_board_full_2() {
    let ttt = TicTacToe()
    let moves = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 1]), ArrayList<Int64>([0, 2]), ArrayList<Int64>([2, 2]), ArrayList<Int64>([0, 0]), ArrayList<Int64>([0, 1]), ArrayList<Int64>([2, 1]), ArrayList<Int64>([1, 0]), ArrayList<Int64>([1, 2]), ArrayList<Int64>([2, 0])])
    for (move in moves) {
        ttt.make_move(move[0], move[1])
    }
    if (ttt.is_board_full() != true) {
        throw Exception("Test failed!")
    }
}

func test_is_board_full_3() {
    let ttt = TicTacToe()
    let moves = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0]), ArrayList<Int64>([0, 1]), ArrayList<Int64>([1, 1]), ArrayList<Int64>([1, 0]), ArrayList<Int64>([2, 0])])
    for (move in moves) {
        ttt.make_move(move[0], move[1])
    }
    if (ttt.is_board_full() != false) {
        throw Exception("Test failed!")
    }
}

func test_is_board_full_4() {
    let ttt = TicTacToe()
    let moves = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0]), ArrayList<Int64>([0, 1]), ArrayList<Int64>([1, 1]), ArrayList<Int64>([1, 0]), ArrayList<Int64>([2, 0]), ArrayList<Int64>([0, 2]), ArrayList<Int64>([1, 2]), ArrayList<Int64>([2, 1]), ArrayList<Int64>([2, 2])])
    for (move in moves) {
        ttt.make_move(move[0], move[1])
    }
    if (ttt.is_board_full() != true) {
        throw Exception("Test failed!")
    }
}

func test_is_board_full_5() {
    let ttt = TicTacToe()
    let moves = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0]), ArrayList<Int64>([0, 1]), ArrayList<Int64>([1, 1]), ArrayList<Int64>([1, 0]), ArrayList<Int64>([2, 0]), ArrayList<Int64>([0, 2]), ArrayList<Int64>([1, 2]), ArrayList<Int64>([2, 1])])
    for (move in moves) {
        ttt.make_move(move[0], move[1])
    }
    if (ttt.is_board_full() != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_board_full_1()
    test_is_board_full_2()
    test_is_board_full_3()
    test_is_board_full_4()
    test_is_board_full_5()
}
