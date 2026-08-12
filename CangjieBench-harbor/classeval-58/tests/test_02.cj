import std.collection.ArrayList
import std.random.Random
import std.convert.Parsable

func test_check_won() {
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
    
    if (minesweeper_game.check_won(minesweeper_game.player_map) != false) {
        throw Exception("Test failed!")
    }
}

func test_check_won_2() {
    let minesweeper_game = MinesweeperGame(3, 1)
    var minesweeper_map = ArrayList<ArrayList<String>>()
    minesweeper_map.add(ArrayList<String>(["X", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["1", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.minesweeper_map = minesweeper_map
    
    var player_map = ArrayList<ArrayList<String>>()
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    player_map.add(ArrayList<String>(["-", "1", "-"]))
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    minesweeper_game.player_map = player_map
    
    if (minesweeper_game.check_won(minesweeper_game.player_map) != false) {
        throw Exception("Test failed!")
    }
}

func test_check_won_3() {
    let minesweeper_game = MinesweeperGame(3, 0)
    var minesweeper_map = ArrayList<ArrayList<String>>()
    minesweeper_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.minesweeper_map = minesweeper_map
    
    var player_map = ArrayList<ArrayList<String>>()
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    player_map.add(ArrayList<String>(["-", "1", "-"]))
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    minesweeper_game.player_map = player_map
    
    if (minesweeper_game.check_won(minesweeper_game.player_map) != false) {
        throw Exception("Test failed!")
    }
}

func test_check_won_4() {
    let minesweeper_game = MinesweeperGame(3, 1)
    var minesweeper_map = ArrayList<ArrayList<String>>()
    minesweeper_map.add(ArrayList<String>(["X", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["1", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.minesweeper_map = minesweeper_map
    
    var player_map = ArrayList<ArrayList<String>>()
    player_map.add(ArrayList<String>(["-", "1", "0"]))
    player_map.add(ArrayList<String>(["1", "1", "0"]))
    player_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.player_map = player_map
    
    if (minesweeper_game.check_won(minesweeper_game.player_map) != true) {
        throw Exception("Test failed!")
    }
}

func test_check_won_5() {
    let minesweeper_game = MinesweeperGame(3, 1)
    var minesweeper_map = ArrayList<ArrayList<String>>()
    minesweeper_map.add(ArrayList<String>(["X", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["1", "1", "0"]))
    minesweeper_map.add(ArrayList<String>(["0", "0", "0"]))
    minesweeper_game.minesweeper_map = minesweeper_map
    
    var player_map = ArrayList<ArrayList<String>>()
    player_map.add(ArrayList<String>(["X", "-", "-"]))
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    player_map.add(ArrayList<String>(["-", "-", "-"]))
    minesweeper_game.player_map = player_map
    
    if (minesweeper_game.check_won(minesweeper_game.player_map) != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_check_won()
    test_check_won_2()
    test_check_won_3()
    test_check_won_4()
    test_check_won_5()
}
