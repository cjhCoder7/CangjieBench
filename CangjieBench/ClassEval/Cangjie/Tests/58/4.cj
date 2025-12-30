func test_minesweeper_main() {
    let minesweeper_game = MinesweeperGame(3, 1)
    let length = minesweeper_game.minesweeper_map.size
    var mine_num = 0
    for (row in minesweeper_game.minesweeper_map) {
        for (cell in row) {
            if (cell == "X") {
                mine_num += 1
            }
        }
    }
    if (length != 3) {
        throw Exception("Test failed!")
    }
    if (mine_num != 1) {
        throw Exception("Test failed!")
    }
    
    let generated_map = MinesweeperGame.generate_playerMap(3)
    let expected_map = ArrayList<ArrayList<String>>()
    expected_map.add(ArrayList<String>(["-", "-", "-"]))
    expected_map.add(ArrayList<String>(["-", "-", "-"]))
    expected_map.add(ArrayList<String>(["-", "-", "-"]))
    if (generated_map != expected_map) {
        throw Exception("Test failed!")
    }
    
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
    
    if (minesweeper_game.check_won(minesweeper_game.player_map) != false) {
        throw Exception("Test failed!")
    }
    
    let sweep_result = minesweeper_game.sweep(1, 1)
    let expected_sweep = ArrayList<ArrayList<String>>()
    expected_sweep.add(ArrayList<String>(["-", "-", "-"]))
    expected_sweep.add(ArrayList<String>(["-", "1", "-"]))
    expected_sweep.add(ArrayList<String>(["-", "-", "-"]))

    if (!(sweep_result is ArrayList<ArrayList<String>>)) {
        throw Exception("Test failed!")
    }
    let sweep_result_ = sweep_result as ArrayList<ArrayList<String>>
    if (sweep_result_ != expected_sweep) {
        throw Exception("Test failed!")
    }
    
    if (minesweeper_game.score != 1) {
        throw Exception("Test failed!")
    }
}

func test_minesweeper_main_2() {
    let minesweeper_game = MinesweeperGame(3, 2)
    let length = minesweeper_game.minesweeper_map.size
    var mine_num = 0
    for (row in minesweeper_game.minesweeper_map) {
        for (cell in row) {
            if (cell == "X") {
                mine_num += 1
            }
        }
    }
    if (length != 3) {
        throw Exception("Test failed!")
    }
    if (mine_num != 2) {
        throw Exception("Test failed!")
    }
    
    let generated_map = MinesweeperGame.generate_playerMap(3)
    let expected_map = ArrayList<ArrayList<String>>()
    expected_map.add(ArrayList<String>(["-", "-", "-"]))
    expected_map.add(ArrayList<String>(["-", "-", "-"]))
    expected_map.add(ArrayList<String>(["-", "-", "-"]))
    if (generated_map != expected_map) {
        throw Exception("Test failed!")
    }
    
    var minesweeper_map = ArrayList<ArrayList<String>>()
    minesweeper_map.add(ArrayList<String>(["X", "1", "1"]))
    minesweeper_map.add(ArrayList<String>(["1", "X", "1"]))
    minesweeper_map.add(ArrayList<String>(["1", "1", "1"]))
    minesweeper_game.minesweeper_map = minesweeper_map
    
    if (minesweeper_game.check_won(minesweeper_game.player_map) != false) {
        throw Exception("Test failed!")
    }
    
    let sweep_result1 = minesweeper_game.sweep(0, 1)
    let expected_sweep1 = ArrayList<ArrayList<String>>()
    expected_sweep1.add(ArrayList<String>(["-", "1", "-"]))
    expected_sweep1.add(ArrayList<String>(["-", "-", "-"]))
    expected_sweep1.add(ArrayList<String>(["-", "-", "-"]))

    if (!(sweep_result1 is ArrayList<ArrayList<String>>)) {
        throw Exception("Test failed!")
    }
    let sweep_result1_ = sweep_result1 as ArrayList<ArrayList<String>>
    if (sweep_result1_ != expected_sweep1) {
        throw Exception("Test failed!")
    }
    
    if (minesweeper_game.score != 1) {
        throw Exception("Test failed!")
    }
    
    let sweep_result2 = minesweeper_game.sweep(0, 2)
    let expected_sweep2 = ArrayList<ArrayList<String>>()
    expected_sweep2.add(ArrayList<String>(["-", "1", "1"]))
    expected_sweep2.add(ArrayList<String>(["-", "-", "-"]))
    expected_sweep2.add(ArrayList<String>(["-", "-", "-"]))

    if (!(sweep_result2 is ArrayList<ArrayList<String>>)) {
        throw Exception("Test failed!")
    }
    let sweep_result2_ = sweep_result2 as ArrayList<ArrayList<String>>
    if (sweep_result2_ != expected_sweep2) {
        throw Exception("Test failed!")
    }
    
    if (minesweeper_game.score != 2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_minesweeper_main()
    test_minesweeper_main_2()
}