func test_check_winner_1() {
    let ttt = TicTacToe()
    let moves = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 0]), ArrayList<Int64>([2, 0]), ArrayList<Int64>([1, 1]), ArrayList<Int64>([2, 1]), ArrayList<Int64>([1, 2])])
    for (move in moves) {
        ttt.make_move(move[0], move[1])
    }
    if (ttt.check_winner() != "X") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_2() {
    let ttt = TicTacToe()
    let moves = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0]), ArrayList<Int64>([0, 1]), ArrayList<Int64>([1, 0]), ArrayList<Int64>([1, 1]), ArrayList<Int64>([2, 0])])
    for (move in moves) {
        ttt.make_move(move[0], move[1])
    }
    if (ttt.check_winner() != "X") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_3() {
    let ttt = TicTacToe()
    let moves = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0]), ArrayList<Int64>([0, 1]), ArrayList<Int64>([1, 1]), ArrayList<Int64>([0, 2]), ArrayList<Int64>([2, 2])])
    for (move in moves) {
        ttt.make_move(move[0], move[1])
    }
    if (ttt.check_winner() != "X") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_4() {
    let ttt = TicTacToe()
    let moves = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 2]), ArrayList<Int64>([0, 1]), ArrayList<Int64>([1, 1]), ArrayList<Int64>([1, 0]), ArrayList<Int64>([2, 0])])
    for (move in moves) {
        ttt.make_move(move[0], move[1])
    }
    if (ttt.check_winner() != "X") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_5() {
    let ttt = TicTacToe()
    let moves = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0]), ArrayList<Int64>([0, 1]), ArrayList<Int64>([1, 1]), ArrayList<Int64>([1, 0]), ArrayList<Int64>([2, 0])])
    for (move in moves) {
        ttt.make_move(move[0], move[1])
    }
    if (ttt.check_winner() != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_check_winner_1()
    test_check_winner_2()
    test_check_winner_3()
    test_check_winner_4()
    test_check_winner_5()
}