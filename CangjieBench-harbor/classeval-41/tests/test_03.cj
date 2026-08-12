import std.collection.ArrayList

func test_main() {
    let gomokuGame = GomokuGame(10)
    let moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 1)]
    if (gomokuGame.check_winner() != None) {
        throw Exception("Test failed!")
    }
    for (move in moves) {
        if (gomokuGame.make_move(move[0], move[1]) != true) {
            throw Exception("Test failed!")
        }
    }
    if (gomokuGame.make_move(0, 0) != false) {
        throw Exception("Test failed!")
    }
    if (gomokuGame._check_five_in_a_row(5, 5, (0, -1)) != true) {
        throw Exception("Test failed!")
    }
    if (gomokuGame.check_winner() != "X") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
