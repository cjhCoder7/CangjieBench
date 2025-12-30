func test_make_move_1() {
    let ttt = TicTacToe()
    if (ttt.current_player != "X") {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(0, 0) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.current_player != "O") {
        throw Exception("Test failed!")
    }
}

func test_make_move_2() {
    let ttt = TicTacToe()
    if (ttt.current_player != "X") {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(0, 0) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(0, 1) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(0, 0) != false) {
        throw Exception("Test failed!")
    }
    if (ttt.current_player != "X") {
        throw Exception("Test failed!")
    }
}

func test_make_move_3() {
    let ttt = TicTacToe()
    if (ttt.current_player != "X") {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(0, 0) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(0, 1) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(1, 1) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.current_player != "O") {
        throw Exception("Test failed!")
    }
}

func test_make_move_4() {
    let ttt = TicTacToe()
    if (ttt.current_player != "X") {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(0, 0) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(0, 1) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(1, 1) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(1, 2) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.current_player != "X") {
        throw Exception("Test failed!")
    }
}

func test_make_move_5() {
    let ttt = TicTacToe()
    if (ttt.current_player != "X") {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(0, 0) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(0, 1) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(1, 1) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(1, 2) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.make_move(2, 2) != true) {
        throw Exception("Test failed!")
    }
    if (ttt.current_player != "O") {
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