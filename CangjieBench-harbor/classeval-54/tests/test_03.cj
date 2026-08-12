import std.collection.ArrayList
import std.collection.HashSet
import std.random.Random

func test_remove_icons_1() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    mc.remove_icons((0, 0), (1, 0))
    var expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>([" ", "b", "c", "a"]))
    expected.add(ArrayList<String>([" ", "b", "c", "a"]))
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    if (mc.board != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_icons_2() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    mc.remove_icons((2, 0), (1, 0))
    var expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    expected.add(ArrayList<String>([" ", "b", "c", "a"]))
    expected.add(ArrayList<String>([" ", "b", "c", "a"]))
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    if (mc.board != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_icons_3() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    mc.remove_icons((1, 1), (0, 1))
    var expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["a", " ", "c", "a"]))
    expected.add(ArrayList<String>(["a", " ", "c", "a"]))
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    if (mc.board != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_icons_4() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    mc.remove_icons((3, 0), (2, 0))
    var expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    expected.add(ArrayList<String>([" ", "b", "c", "a"]))
    expected.add(ArrayList<String>([" ", "b", "c", "a"]))
    if (mc.board != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_icons_5() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    mc.remove_icons((3, 3), (2, 3))
    var expected = ArrayList<ArrayList<String>>()
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    expected.add(ArrayList<String>(["a", "b", "c", "a"]))
    expected.add(ArrayList<String>(["a", "b", "c", " "]))
    expected.add(ArrayList<String>(["a", "b", "c", " "]))
    if (mc.board != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_remove_icons_1()
    test_remove_icons_2()
    test_remove_icons_3()
    test_remove_icons_4()
    test_remove_icons_5()
}
