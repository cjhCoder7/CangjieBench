func test_check_winner_1() {
    let gomokuGame = GomokuGame(10)
    if (gomokuGame.check_winner() != None) {
        throw Exception("Test failed!")
    }
}

func test_check_winner_2() {
    let gomokuGame = GomokuGame(10)
    let moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 1)]
    for (move in moves) {
        gomokuGame.make_move(move[0], move[1])
    }
    if (gomokuGame.check_winner() != "X") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_3() {
    let gomokuGame = GomokuGame(10)
    let moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 0), (0, 4)]
    for (move in moves) {
        gomokuGame.make_move(move[0], move[1])
    }
    if (gomokuGame.check_winner() != "O") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_4() {
    let gomokuGame = GomokuGame(10)
    let moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 1), (0, 4)]
    for (move in moves) {
        gomokuGame.make_move(move[0], move[1])
    }
    if (gomokuGame.check_winner() != "O") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_5() {
    let gomokuGame = GomokuGame(10)
    let moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 1), (0, 4), (5, 0)]
    for (move in moves) {
        gomokuGame.make_move(move[0], move[1])
    }
    if (gomokuGame.check_winner() != "O") {
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