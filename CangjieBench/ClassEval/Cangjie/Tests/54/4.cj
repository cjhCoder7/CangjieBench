func test_is_game_over_1() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    mc.board = board
    let res = mc.is_game_over()
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_is_game_over_2() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", " ", " ", " "]))
    board.add(ArrayList<String>(["a", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    mc.board = board
    let res = mc.is_game_over()
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_is_game_over_3() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    board.add(ArrayList<String>(["a", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    mc.board = board
    let res = mc.is_game_over()
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_is_game_over_4() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["1", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    mc.board = board
    let res = mc.is_game_over()
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_is_game_over_5() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    board.add(ArrayList<String>([" ", " ", " ", " "]))
    mc.board = board
    let res = mc.is_game_over()
    if (res != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_game_over_1()
    test_is_game_over_2()
    test_is_game_over_3()
    test_is_game_over_4()
    test_is_game_over_5()
}