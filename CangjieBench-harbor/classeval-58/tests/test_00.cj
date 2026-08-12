import std.collection.ArrayList
import std.random.Random
import std.convert.Parsable

func test_generate_mine_sweeper_map() {
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
}

func test_generate_mine_sweeper_map_2() {
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
}

func test_generate_mine_sweeper_map_3() {
    let minesweeper_game = MinesweeperGame(3, 0)
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
    if (mine_num != 0) {
        throw Exception("Test failed!")
    }
}

func test_generate_mine_sweeper_map_4() {
    let minesweeper_game = MinesweeperGame(5, 1)
    let length = minesweeper_game.minesweeper_map.size
    var mine_num = 0
    for (row in minesweeper_game.minesweeper_map) {
        for (cell in row) {
            if (cell == "X") {
                mine_num += 1
            }
        }
    }
    if (length != 5) {
        throw Exception("Test failed!")
    }
    if (mine_num != 1) {
        throw Exception("Test failed!")
    }
}

func test_generate_mine_sweeper_map_5() {
    let minesweeper_game = MinesweeperGame(4, 1)
    let length = minesweeper_game.minesweeper_map.size
    var mine_num = 0
    for (row in minesweeper_game.minesweeper_map) {
        for (cell in row) {
            if (cell == "X") {
                mine_num += 1
            }
        }
    }
    if (length != 4) {
        throw Exception("Test failed!")
    }
    if (mine_num != 1) {
        throw Exception("Test failed!")
    }
}

main() {
    test_generate_mine_sweeper_map()
    test_generate_mine_sweeper_map_2()
    test_generate_mine_sweeper_map_3()
    test_generate_mine_sweeper_map_4()
    test_generate_mine_sweeper_map_5()
}
