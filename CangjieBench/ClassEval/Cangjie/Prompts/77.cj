import std.collection.ArrayList
import std.random.Random

class Snake {

    /*
    The class is a snake game, with allows snake to move and eat food, and also enables to reset, and generat a random food position.
    */

    var length: Int64
    let SCREEN_WIDTH: Int64
    let SCREEN_HEIGHT: Int64
    let BLOCK_SIZE: Int64
    var positions: ArrayList<ArrayList<Int64>>
    var score: Int64
    var food_position: ArrayList<Int64>

    public init(SCREEN_WIDTH: Int64, SCREEN_HEIGHT: Int64, BLOCK_SIZE: Int64, food_position: ArrayList<Int64>) {
        /*
        Initialize the length of the snake, screen width, screen height, block size, snake head position, score, and food position.
        :param SCREEN_WIDTH: Int64
        :param SCREEN_HEIGHT: Int64
        :param BLOCK_SIZE: Int64, Size of moving units
        :param food_position: ArrayList<Int64>, representing the position(x, y) of food.
        */
        this.length = 1
        this.SCREEN_WIDTH = SCREEN_WIDTH
        this.SCREEN_HEIGHT = SCREEN_HEIGHT
        this.BLOCK_SIZE = BLOCK_SIZE
        this.positions = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2])])
        this.score = 0
        this.food_position = food_position
    }
    
    public func move(direction: ArrayList<Int64>): Unit {
        /*
        Move the snake in the specified direction. If the new position of the snake's head is equal to the position of the food, then eat the food; If the position of the snake's head is equal to the position of its body, then start over, otherwise its own length plus one.
        :param direction: ArrayList<Int64>, representing the direction of movement (x, y).
        :return: Unit
        >>> snake.move(ArrayList<Int64>([1,1]))
        this.length = 1
        this.positions = [(51, 51), (50, 50)]
        this.score = 10
        */
        
    }

    public func random_food_position(): Unit {
        /*
        Randomly generate a new food position, but don't place it on the snake.
        :return: Unit, Change the food position
        */
        
    }

    public func reset(): Unit {
        /*
        Reset the snake to its initial state. Set the length to 1, the snake head position to ((SCREEN_WIDTH/2), (SCREEN_HEIGHT/2)), the score to 0, and randomly generate new food position.
        :return: Unit
        >>> snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
        >>> snake.reset()
        this.length = 1
        this.positions = [(50, 50)]
        this.score = 0
        this.random_food_position()
        */
        
    }

    public func eat_food(): Unit {
        /*
        Increase the length of the snake by 1 and increase the score by 100. Randomly generate a new food position, but
        don't place it on the snake.
        :return: Unit
        >>> snake = Snake(100, 100, 1, ArrayList<Int64>([51, 51]))
        >>> snake.move(ArrayList<Int64>([1,1]))
        >>> snake.eat_food()
        this.length = 2
        this.score = 10
        */
        
    }
}

