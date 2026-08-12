import std.collection.ArrayList
import std.collection.HashSet
import std.random.Random

func test_is_valid_move_1() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res = mc.is_valid_move((0, 0), (1, 0))
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_move_2() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res = mc.is_valid_move((0, 0), (0, 1))
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_move_3() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res = mc.is_valid_move((-1, 0), (0, 1))
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_move_4() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res = mc.is_valid_move((0, 0), (0, 0))
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_move_5() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res = mc.is_valid_move((300, 0), (0, 0))
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_move_6() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "a", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res = mc.is_valid_move((0, 2), (0, 0))
    if (res != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_valid_move_1()
    test_is_valid_move_2()
    test_is_valid_move_3()
    test_is_valid_move_4()
    test_is_valid_move_5()
    test_is_valid_move_6()
}
