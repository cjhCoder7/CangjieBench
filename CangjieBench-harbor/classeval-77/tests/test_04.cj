import std.collection.ArrayList
import std.random.Random

func test_snake() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.SCREEN_WIDTH != 100) {
        throw Exception("Test failed!")
    }
    if (snake.SCREEN_HEIGHT != 100) {
        throw Exception("Test failed!")
    }
    if (snake.BLOCK_SIZE != 1) {
        throw Exception("Test failed!")
    }
    if (snake.positions[0] != ArrayList<Int64>([50, 50])) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
    if (snake.food_position != ArrayList<Int64>([51, 51])) {
        throw Exception("Test failed!")
    }
    snake.move(ArrayList<Int64>([1, 1]))
    if (snake.length != 2) {
        throw Exception("Test failed!")
    }
    if (snake.positions[0] != ArrayList<Int64>([51, 51])) {
        throw Exception("Test failed!")
    }
    if (snake.score != 100) {
        throw Exception("Test failed!")
    }
    snake.random_food_position()
    if (snake.positions.contains(snake.food_position)) {
        throw Exception("Test failed!")
    }
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
    test_snake()
}
