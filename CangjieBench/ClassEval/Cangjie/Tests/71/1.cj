func test_check_win_1() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    if (game.check_win() != false) {
        throw Exception("Test failed!")
    }
}

func test_check_win_2() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    let moves = ArrayList<String>(["d", "s", "a", "s", "d"])
    for (move in moves) {
        game.move(move)
    }
    if (game.check_win() != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_check_win_1()
    test_check_win_2()
}