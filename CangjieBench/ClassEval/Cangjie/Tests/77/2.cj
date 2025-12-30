func test_reset_1() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    snake.move(ArrayList<Int64>([1, 1]))
    snake.reset()
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.positions[0] != ArrayList<Int64>([50, 50])) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
}

func test_reset_2() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    snake.move(ArrayList<Int64>([0, 1]))
    snake.reset()
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.positions[0] != ArrayList<Int64>([50, 50])) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
}

func test_reset_3() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    snake.move(ArrayList<Int64>([0, -1]))
    snake.reset()
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.positions[0] != ArrayList<Int64>([50, 50])) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
}

func test_reset_4() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    snake.move(ArrayList<Int64>([-1, 0]))
    snake.reset()
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.positions[0] != ArrayList<Int64>([50, 50])) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
}

func test_reset_5() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    snake.move(ArrayList<Int64>([1, 0]))
    snake.reset()
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.positions[0] != ArrayList<Int64>([50, 50])) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_reset_1()
    test_reset_2()
    test_reset_3()
    test_reset_4()
    test_reset_5()
}