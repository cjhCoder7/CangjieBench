import std.collection.ArrayList

func test_make_move_1() {
    let board_size = 10
    let gomokuGame = GomokuGame(board_size)
    var board = ArrayList<ArrayList<String>>()
    for (_ in 0..board_size) {
        var row = ArrayList<String>()
        for (_ in 0..board_size) {
            row.add(" ")
        }
        board.add(row)
    }
    if (gomokuGame.make_move(0, 0) != true) {
        throw Exception("Test failed!")
    }
    board[0][0] = "X"
    if (board != gomokuGame.board) {
        throw Exception("Test failed!")
    }
}

func test_make_move_2() {
    let board_size = 10
    let gomokuGame = GomokuGame(board_size)
    var board = ArrayList<ArrayList<String>>()
    for (_ in 0..board_size) {
        var row = ArrayList<String>()
        for (_ in 0..board_size) {
            row.add(" ")
        }
        board.add(row)
    }
    if (gomokuGame.make_move(0, 0) != true) {
        throw Exception("Test failed!")
    }
    if (gomokuGame.make_move(0, 0) != false) {
        throw Exception("Test failed!")
    }
    board[0][0] = "X"
    if (board != gomokuGame.board) {
        throw Exception("Test failed!")
    }
}

func test_make_move_3() {
    let board_size = 10
    let gomokuGame = GomokuGame(board_size)
    var board = ArrayList<ArrayList<String>>()
    for (_ in 0..board_size) {
        var row = ArrayList<String>()
        for (_ in 0..board_size) {
            row.add(" ")
        }
        board.add(row)
    }
    if (gomokuGame.make_move(0, 0) != true) {
        throw Exception("Test failed!")
    }
    if (gomokuGame.make_move(0, 1) != true) {
        throw Exception("Test failed!")
    }
    board[0][0] = "X"
    board[0][1] = "O"
    if (board != gomokuGame.board) {
        throw Exception("Test failed!")
    }
}

func test_make_move_4() {
    let board_size = 10
    let gomokuGame = GomokuGame(board_size)
    var board = ArrayList<ArrayList<String>>()
    for (_ in 0..board_size) {
        var row = ArrayList<String>()
        for (_ in 0..board_size) {
            row.add(" ")
        }
        board.add(row)
    }
    if (gomokuGame.make_move(0, 0) != true) {
        throw Exception("Test failed!")
    }
    if (gomokuGame.make_move(0, 1) != true) {
        throw Exception("Test failed!")
    }
    if (gomokuGame.make_move(0, 0) != false) {
        throw Exception("Test failed!")
    }
    board[0][0] = "X"
    board[0][1] = "O"
    if (board != gomokuGame.board) {
        throw Exception("Test failed!")
    }
}

func test_make_move_5() {
    let board_size = 10
    let gomokuGame = GomokuGame(board_size)
    var board = ArrayList<ArrayList<String>>()
    for (_ in 0..board_size) {
        var row = ArrayList<String>()
        for (_ in 0..board_size) {
            row.add(" ")
        }
        board.add(row)
    }
    if (gomokuGame.make_move(0, 0) != true) {
        throw Exception("Test failed!")
    }
    if (gomokuGame.make_move(0, 1) != true) {
        throw Exception("Test failed!")
    }
    if (gomokuGame.make_move(0, 1) != false) {
        throw Exception("Test failed!")
    }
    board[0][0] = "X"
    board[0][1] = "O"
    if (board != gomokuGame.board) {
        throw Exception("Test failed!")
    }
}

main() {
    test_make_move_1()
    test_make_move_2()
    test_make_move_3()
    test_make_move_4()
    test_make_move_5()
}
