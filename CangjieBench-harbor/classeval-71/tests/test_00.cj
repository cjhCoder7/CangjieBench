import std.collection.ArrayList

func test_init_game_1() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    if (game.map != game_map) {
        throw Exception("Test failed!")
    }
}

func test_init_game_2() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    if (game.is_game_over != false) {
        throw Exception("Test failed!")
    }
}

func test_init_game_3() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    if (game.player_col != 1) {
        throw Exception("Test failed!")
    }
}

func test_init_game_4() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    if (game.player_row != 1) {
        throw Exception("Test failed!")
    }
}

func test_init_game_5() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    let expected_targets = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([3, 3])])
    if (game.targets != expected_targets) {
        throw Exception("Test failed!")
    }
}

func test_init_game_6() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    let expected_boxes = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([2, 2])])
    if (game.boxes != expected_boxes) {
        throw Exception("Test failed!")
    }
}

func test_init_game_7() {
    let game_map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
    let game = PushBoxGame(game_map)

    if (game.target_count != 1) {
        throw Exception("Test failed!")
    }
}

main() {
    test_init_game_1()
    test_init_game_2()
    test_init_game_3()
    test_init_game_4()
    test_init_game_5()
    test_init_game_6()
    test_init_game_7()
}
