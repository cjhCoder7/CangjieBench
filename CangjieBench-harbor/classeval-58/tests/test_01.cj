import std.collection.ArrayList
import std.random.Random
import std.convert.Parsable

func test_generate_playerMap() {
    let minesweeper_game = MinesweeperGame(3, 2)
    let result = MinesweeperGame.generate_playerMap(3)
    let expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["-", "-", "-"]))
    expected.add(ArrayList<String>(["-", "-", "-"]))
    expected.add(ArrayList<String>(["-", "-", "-"]))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_generate_playerMap_2() {
    let minesweeper_game = MinesweeperGame(3, 1)
    let result = MinesweeperGame.generate_playerMap(3)
    let expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["-", "-", "-"]))
    expected.add(ArrayList<String>(["-", "-", "-"]))
    expected.add(ArrayList<String>(["-", "-", "-"]))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_generate_playerMap_3() {
    let minesweeper_game = MinesweeperGame(4, 2)
    let result = MinesweeperGame.generate_playerMap(4)
    let expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["-", "-", "-", "-"]))
    expected.add(ArrayList<String>(["-", "-", "-", "-"]))
    expected.add(ArrayList<String>(["-", "-", "-", "-"]))
    expected.add(ArrayList<String>(["-", "-", "-", "-"]))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_generate_playerMap_4() {
    let minesweeper_game = MinesweeperGame(1, 4)
    let result = MinesweeperGame.generate_playerMap(1)
    let expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["-"]))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_generate_playerMap_5() {
    let minesweeper_game = MinesweeperGame(2, 5)
    let result = MinesweeperGame.generate_playerMap(2)
    let expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["-", "-"]))
    expected.add(ArrayList<String>(["-", "-"]))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_generate_playerMap()
    test_generate_playerMap_2()
    test_generate_playerMap_3()
    test_generate_playerMap_4()
    test_generate_playerMap_5()
}
