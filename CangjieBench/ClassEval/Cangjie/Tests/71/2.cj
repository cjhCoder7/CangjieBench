func test_move_1() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    let moves = ArrayList<String>(["d", "s", "a", "s"])
    for (move in moves) {
        if (game.move(move) != false) {
            throw Exception("Test failed!")
        }
    }
    if (game.move("d") != true) {
        throw Exception("Test failed!")
    }
}

func test_move_2() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    game.move("a")
    if (game.player_col != 1) {
        throw Exception("Test failed!")
    }
    if (game.player_row != 1) {
        throw Exception("Test failed!")
    }
    if (game.is_game_over != false) {
        throw Exception("Test failed!")
    }
}

func test_move_3() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    game.move("d")
    if (game.player_col != 2) {
        throw Exception("Test failed!")
    }
    if (game.player_row != 1) {
        throw Exception("Test failed!")
    }
    if (game.is_game_over != false) {
        throw Exception("Test failed!")
    }
}

func test_move_4() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    game.move("s")
    if (game.player_col != 1) {
        throw Exception("Test failed!")
    }
    if (game.player_row != 2) {
        throw Exception("Test failed!")
    }
    if (game.is_game_over != false) {
        throw Exception("Test failed!")
    }
}

func test_move_5() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    game.move("w")
    if (game.player_col != 1) {
        throw Exception("Test failed!")
    }
    if (game.player_row != 1) {
        throw Exception("Test failed!")
    }
    if (game.is_game_over != false) {
        throw Exception("Test failed!")
    }
}

func test_move_6() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    game.move("?")
    if (game.is_game_over != false) {
        throw Exception("Test failed!")
    }
}

func test_move_7() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", "O", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    game.move("w")
    if (game.player_col != 2) {
        throw Exception("Test failed!")
    }
    if (game.player_row != 2) {
        throw Exception("Test failed!")
    }
    if (game.is_game_over != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_move_1()
    test_move_2()
    test_move_3()
    test_move_4()
    test_move_5()
    test_move_6()
    test_move_7()
}