func test_create_board_1() {
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
}

func test_create_board_2() {
    let mc = MahjongConnect(ArrayList<Int64>([2, 2]), ArrayList<String>(["a", "b", "c"]))
    if (mc.BOARD_SIZE != ArrayList<Int64>([2, 2])) {
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
}

func test_create_board_3() {
    let mc = MahjongConnect(ArrayList<Int64>([3, 3]), ArrayList<String>(["a", "b", "c"]))
    if (mc.BOARD_SIZE != ArrayList<Int64>([3, 3])) {
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
}

func test_create_board_4() {
    let mc = MahjongConnect(ArrayList<Int64>([1, 1]), ArrayList<String>(["a", "b", "c"]))
    if (mc.BOARD_SIZE != ArrayList<Int64>([1, 1])) {
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
}

func test_create_board_5() {
    let mc = MahjongConnect(ArrayList<Int64>([5, 5]), ArrayList<String>(["a", "b", "c"]))
    if (mc.BOARD_SIZE != ArrayList<Int64>([5, 5])) {
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
}

main() {
    test_create_board_1()
    test_create_board_2()
    test_create_board_3()
    test_create_board_4()
    test_create_board_5()
}