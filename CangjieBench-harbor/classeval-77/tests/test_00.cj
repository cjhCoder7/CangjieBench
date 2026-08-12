import std.collection.ArrayList
import std.random.Random

func test_move_1() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    snake.move(ArrayList<Int64>([1, 1]))
    if (snake.length != 2) {
        throw Exception("Test failed!")
    }
    if (snake.positions[0] != ArrayList<Int64>([51, 51])) {
        throw Exception("Test failed!")
    }
    if (snake.positions[1] != ArrayList<Int64>([50, 50])) {
        throw Exception("Test failed!")
    }
    if (snake.score != 100) {
        throw Exception("Test failed!")
    }
}

func test_move_2() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([80, 80]))
    snake.move(ArrayList<Int64>([1, 1]))
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.positions[0] != ArrayList<Int64>([51, 51])) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
}

func test_move_3() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    snake.move(ArrayList<Int64>([1, 0]))
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.positions[0] != ArrayList<Int64>([51, 50])) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
}

func test_move_4() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    snake.move(ArrayList<Int64>([0, 0]))
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

func test_move_5() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([99, 99]))
    snake.move(ArrayList<Int64>([1, 0]))
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.positions[0] != ArrayList<Int64>([51, 50])) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_move_1()
    test_move_2()
    test_move_3()
    test_move_4()
    test_move_5()
}
