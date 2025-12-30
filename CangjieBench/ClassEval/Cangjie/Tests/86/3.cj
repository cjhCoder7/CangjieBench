func test_main() {
    let ttt = TicTacToe()
    let moves = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 1]), ArrayList<Int64>([0, 2]), ArrayList<Int64>([2, 2]), ArrayList<Int64>([0, 0]), ArrayList<Int64>([0, 1]), ArrayList<Int64>([2, 1]), ArrayList<Int64>([1, 0]), ArrayList<Int64>([1, 2]), ArrayList<Int64>([2, 0])])
    for (move in moves) {
        if (ttt.make_move(move[0], move[1]) != true) {
            throw Exception("Test failed!")
        }
        if (ttt.check_winner() != None) {
            throw Exception("Test failed!")
        }
        if (move != ArrayList<Int64>([2, 0])) {
            if (ttt.is_board_full() != false) {
                throw Exception("Test failed!")
            }
        }
    }
    if (ttt.is_board_full() != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}