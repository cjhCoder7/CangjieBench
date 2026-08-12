import std.collection.ArrayList
import std.random.Random

func test_eat_food_1() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
    snake.eat_food()
    if (snake.length != 2) {
        throw Exception("Test failed!")
    }
    if (snake.score != 100) {
        throw Exception("Test failed!")
    }
}

func test_eat_food_2() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
    snake.eat_food()
    snake.eat_food()
    if (snake.length != 3) {
        throw Exception("Test failed!")
    }
    if (snake.score != 200) {
        throw Exception("Test failed!")
    }
}

func test_eat_food_3() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
    snake.eat_food()
    snake.eat_food()
    snake.eat_food()
    if (snake.length != 4) {
        throw Exception("Test failed!")
    }
    if (snake.score != 300) {
        throw Exception("Test failed!")
    }
}

func test_eat_food_4() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
    snake.eat_food()
    snake.eat_food()
    snake.eat_food()
    snake.eat_food()
    if (snake.length != 5) {
        throw Exception("Test failed!")
    }
    if (snake.score != 400) {
        throw Exception("Test failed!")
    }
}

func test_eat_food_5() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    if (snake.length != 1) {
        throw Exception("Test failed!")
    }
    if (snake.score != 0) {
        throw Exception("Test failed!")
    }
    snake.eat_food()
    snake.eat_food()
    snake.eat_food()
    snake.eat_food()
    snake.eat_food()
    if (snake.length != 6) {
        throw Exception("Test failed!")
    }
    if (snake.score != 500) {
        throw Exception("Test failed!")
    }
}

main() {
    test_eat_food_1()
    test_eat_food_2()
    test_eat_food_3()
    test_eat_food_4()
    test_eat_food_5()
}
