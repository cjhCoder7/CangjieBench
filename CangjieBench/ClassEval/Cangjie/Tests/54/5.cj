func test_mahjongconnect() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    if (mc.BOARD_SIZE != ArrayList<Int64>([4, 4])) {
        throw Exception("Test failed!")
    }
    if (mc.ICONS != ArrayList<String>(["a", "b", "c"])) {
        throw Exception("Test failed!")
    }
    for (row in mc.board) {
        for (icon in row) {
            if (!mc.ICONS.contains(icon)) {
                throw Exception("Test failed!")
            }
        }
    }

    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res1 = mc.is_valid_move((0, 0), (1, 0))
    if (res1 != true) {
        throw Exception("Test failed!")
    }

    let res2 = mc.has_path((0, 0), (1, 0))
    if (res2 != true) {
        throw Exception("Test failed!")
    }

    mc.remove_icons((0, 0), (1, 0))
    var expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>([" ", "b", "c", "a"]))
    expected.add(ArrayList<String>([" ", "b", "c", "a"]))
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    if (mc.board != expected) {
        throw Exception("Test failed!")
    }

    var board2 = ArrayList<ArrayList<String>>()
    board2.add(ArrayList<String>([" ", " ", " ", " "]))
    board2.add(ArrayList<String>([" ", " ", " ", " "]))
    board2.add(ArrayList<String>([" ", " ", " ", " "]))
    board2.add(ArrayList<String>([" ", " ", " ", " "]))
    mc.board = board2
    let res3 = mc.is_game_over()
    if (res3 != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_mahjongconnect()
}