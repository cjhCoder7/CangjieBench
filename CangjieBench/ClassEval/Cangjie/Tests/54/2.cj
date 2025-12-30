func test_has_path_1() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res = mc.has_path((0, 0), (1, 0))
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_has_path_2() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res = mc.has_path((0, 0), (0, 0))
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_has_path_3() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res = mc.has_path((0, 0), (3, 0))
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_has_path_4() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res = mc.has_path((0, 0), (1, 1))
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_has_path_5() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    board.add(ArrayList<String>(["a", "b", "c", "a"]))
    mc.board = board
    let res = mc.has_path((300, 0), (1, 1))
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_has_path_6() {
    let mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(["a", "b", "c"]))
    var board = ArrayList<ArrayList<String>>()
    board.add(ArrayList<String>(["a", "a", "a", "a"]))
    board.add(ArrayList<String>(["a", "a", "a", "a"]))
    board.add(ArrayList<String>(["a", "a", "a", "a"]))
    board.add(ArrayList<String>(["a", "a", "a", "a"]))
    mc.board = board
    let res = mc.has_path((0, 0), (3, 3))
    if (res != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_has_path_1()
    test_has_path_2()
    test_has_path_3()
    test_has_path_4()
    test_has_path_5()
    test_has_path_6()
}