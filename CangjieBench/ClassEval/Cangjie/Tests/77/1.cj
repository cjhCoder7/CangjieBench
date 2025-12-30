func test_random_food_position_1() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
    if (snake.food_position != ArrayList<Int64>([51, 51])) {
        throw Exception("Test failed!")
    }
    snake.random_food_position()
    if (snake.positions.contains(snake.food_position)) {
        throw Exception("Test failed!")
    }
    if (snake.food_position[0] < 0 || snake.food_position[1] < 0) {
        throw Exception("Test failed!")
    }
    if (snake.food_position[0] > 100 || snake.food_position[1] > 100) {
        throw Exception("Test failed!")
    }
}

func test_random_food_position_2() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([99, 99]))
    if (snake.food_position != ArrayList<Int64>([99, 99])) {
        throw Exception("Test failed!")
    }
    snake.random_food_position()
    if (snake.positions.contains(snake.food_position)) {
        throw Exception("Test failed!")
    }
    if (snake.food_position[0] < 0 || snake.food_position[1] < 0) {
        throw Exception("Test failed!")
    }
    if (snake.food_position[0] > 100 || snake.food_position[1] > 100) {
        throw Exception("Test failed!")
    }
}

func test_random_food_position_3() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([0, 0]))
    if (snake.food_position != ArrayList<Int64>([0, 0])) {
        throw Exception("Test failed!")
    }
    snake.random_food_position()
    if (snake.positions.contains(snake.food_position)) {
        throw Exception("Test failed!")
    }
    if (snake.food_position[0] < 0 || snake.food_position[1] < 0) {
        throw Exception("Test failed!")
    }
    if (snake.food_position[0] > 100 || snake.food_position[1] > 100) {
        throw Exception("Test failed!")
    }
}

func test_random_food_position_4() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([40, 40]))
    if (snake.food_position != ArrayList<Int64>([40, 40])) {
        throw Exception("Test failed!")
    }
    snake.random_food_position()
    if (snake.positions.contains(snake.food_position)) {
        throw Exception("Test failed!")
    }
    if (snake.food_position[0] < 0 || snake.food_position[1] < 0) {
        throw Exception("Test failed!")
    }
    if (snake.food_position[0] > 100 || snake.food_position[1] > 100) {
        throw Exception("Test failed!")
    }
}

func test_random_food_position_5() {
    let snake = Snake(100, 100, 1, ArrayList<Int64>([60, 60]))
    if (snake.food_position != ArrayList<Int64>([60, 60])) {
        throw Exception("Test failed!")
    }
    snake.random_food_position()
    if (snake.positions.contains(snake.food_position)) {
        throw Exception("Test failed!")
    }
    if (snake.food_position[0] < 0 || snake.food_position[1] < 0) {
        throw Exception("Test failed!")
    }
    if (snake.food_position[0] > 100 || snake.food_position[1] > 100) {
        throw Exception("Test failed!")
    }
}

main() {
    test_random_food_position_1()
    test_random_food_position_2()
    test_random_food_position_3()
    test_random_food_position_4()
    test_random_food_position_5()
}