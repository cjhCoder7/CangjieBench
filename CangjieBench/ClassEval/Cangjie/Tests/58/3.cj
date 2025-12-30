func test_sweep() {
    let minesweeper_game = MinesweeperGame(3, 1)
    var minesweeper_map = ArrayList<ArrayList<String>>()
    minesweeper_map.add(ArrayList<String>(["X", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["1", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.minesweeper_map = minesweeper_map
    
    var player_map = ArrayList<ArrayList<String>>()
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    minesweeper_game.player_map = player_map
    
    let result = minesweeper_game.sweep(1, 1)
    let expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["-", "-", "-"]))
    expected.add(ArrayList<String>(["-", "1", "-"]))
    expected.add(ArrayList<String>(["-", "-", "-"]))

    if (!(result is ArrayList<ArrayList<String>>)) {
        throw Exception("Test failed!")
    }
    let result_ = result as ArrayList<ArrayList<String>>
    if (result_ != expected) {
        throw Exception("Test failed!")
    }
    if (minesweeper_game.score != 1) {
        throw Exception("Test failed!")
    }
}

func test_sweep_2() {
    let minesweeper_game = MinesweeperGame(3, 1)
    var minesweeper_map = ArrayList<ArrayList<String>>()
    minesweeper_map.add(ArrayList<String>(["X", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["1", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.minesweeper_map = minesweeper_map
    
    var player_map = ArrayList<ArrayList<String>>()
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    minesweeper_game.player_map = player_map
    
    let result = minesweeper_game.sweep(0, 0)
    if (!(result is Bool)) {
        throw Exception("Test failed!")
    }
    let result_ = result as Bool
    if (result_ != false) {
        throw Exception("Test failed!")
    }
    if (minesweeper_game.score != 0) {
        throw Exception("Test failed!")
    }
}

func test_sweep_3() {
    let minesweeper_game = MinesweeperGame(3, 1)
    var minesweeper_map = ArrayList<ArrayList<String>>()
    minesweeper_map.add(ArrayList<String>(["X", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["1", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.minesweeper_map = minesweeper_map
    
    var player_map = ArrayList<ArrayList<String>>()
    player_map.add(ArrayList<String>(["-", "-", "0"]))
    player_map.add(ArrayList<String>(["1", "1", "0"]))
    player_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.player_map = player_map
    
    let result = minesweeper_game.sweep(0, 1)
    if (!(result is Bool)) {
        throw Exception("Test failed!")
    }
    let result_ = result as Bool
    if (result_ != true) {
        throw Exception("Test failed!")
    }
    if (minesweeper_game.score != 1) {
        throw Exception("Test failed!")
    }
}

func test_sweep_4() {
    let minesweeper_game = MinesweeperGame(3, 1)
    var minesweeper_map = ArrayList<ArrayList<String>>()
    minesweeper_map.add(ArrayList<String>(["X", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["1", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.minesweeper_map = minesweeper_map
    
    var player_map = ArrayList<ArrayList<String>>()
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    player_map.add(ArrayList<String>(["-", "-", "0"]))
    player_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.player_map = player_map
    
    let result = minesweeper_game.sweep(0, 2)
    let expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["-", "-", "0"]))
    expected.add(ArrayList<String>(["-", "-", "0"]))
    expected.add(ArrayList<String>(["0", "0", "0"]))

    if (!(result is ArrayList<ArrayList<String>>)) {
        throw Exception("Test failed!")
    }
    let result_ = result as ArrayList<ArrayList<String>>
    if (result_ != expected) {
        throw Exception("Test failed!")
    }
    if (minesweeper_game.score != 1) {
        throw Exception("Test failed!")
    }
}

func test_sweep_5() {
    let minesweeper_game = MinesweeperGame(3, 1)
    var minesweeper_map = ArrayList<ArrayList<String>>()
    minesweeper_map.add(ArrayList<String>(["X", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["1", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.minesweeper_map = minesweeper_map
    
    var player_map = ArrayList<ArrayList<String>>()
    player_map.add(ArrayList<String>(["-", "-", "0"]))
    player_map.add(ArrayList<String>(["-", "1", "0"]))
    player_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.player_map = player_map
    
    let result = minesweeper_game.sweep(1, 0)
    let expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["-", "-", "0"]))
    expected.add(ArrayList<String>(["1", "1", "0"]))
    expected.add(ArrayList<String>(["0", "0", "0"]))

    if (!(result is ArrayList<ArrayList<String>>)) {
        throw Exception("Test failed!")
    }
    let result_ = result as ArrayList<ArrayList<String>>
    if (result_ != expected) {
        throw Exception("Test failed!")
    }
    if (minesweeper_game.score != 1) {
        throw Exception("Test failed!")
    }
}

main() {
    test_sweep()
    test_sweep_2()
    test_sweep_3()
    test_sweep_4()
    test_sweep_5()
}