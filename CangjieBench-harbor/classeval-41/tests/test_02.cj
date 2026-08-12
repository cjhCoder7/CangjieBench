import std.collection.ArrayList

func test_check_five_in_a_row_1() {
    let gomokuGame = GomokuGame(10)
    let moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 1)]
    for (move in moves) {
        gomokuGame.make_move(move[0], move[1])
    }
    if (gomokuGame._check_five_in_a_row(5, 5, (0, -1)) != true) {
        throw Exception("Test failed!")
    }
}

func test_check_five_in_a_row_2() {
    let gomokuGame = GomokuGame(10)
    let moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 1)]
    for (move in moves) {
        gomokuGame.make_move(move[0], move[1])
    }
    if (gomokuGame._check_five_in_a_row(5, 1, (0, 1)) != true) {
        throw Exception("Test failed!")
    }
}

func test_check_five_in_a_row_3() {
    let gomokuGame = GomokuGame(10)
    let moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 1)]
    for (move in moves) {
        gomokuGame.make_move(move[0], move[1])
    }
    if (gomokuGame._check_five_in_a_row(0, 0, (0, 1)) != false) {
        throw Exception("Test failed!")
    }
}

func test_check_five_in_a_row_4() {
    let gomokuGame = GomokuGame(10)
    let moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 1)]
    for (move in moves) {
        gomokuGame.make_move(move[0], move[1])
    }
    if (gomokuGame._check_five_in_a_row(0, 0, (1, 0)) != false) {
        throw Exception("Test failed!")
    }
}

func test_check_five_in_a_row_5() {
    let gomokuGame = GomokuGame(10)
    let moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 1)]
    for (move in moves) {
        gomokuGame.make_move(move[0], move[1])
    }
    if (gomokuGame._check_five_in_a_row(5, 5, (1, 0)) != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_check_five_in_a_row_1()
    test_check_five_in_a_row_2()
    test_check_five_in_a_row_3()
    test_check_five_in_a_row_4()
    test_check_five_in_a_row_5()
}
