import std.collection.ArrayList

class EightPuzzle {

    /*
    This class is an implementation of the classic 8-puzzle game, including methods for finding the blank tile, making moves, getting possible moves, and solving the puzzle using a breadth-first search algorithm.
    */

    let initial_state: ArrayList<ArrayList<Int64>>
    let goal_state: ArrayList<ArrayList<Int64>>

    public init(initial_state: ArrayList<ArrayList<Int64>>) {
        /*
        Initializing the initial state of Eight Puzzle Game, stores in attribute this.initial_state.
        And set the goal state of this game, stores in this.goal_state. In this case, set the size as 3*3
        :param initial_state: a 3*3 size list of Integer, stores the initial state
        */
        this.initial_state = initial_state
        this.goal_state = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6]), ArrayList<Int64>([7, 8, 0])])
    }

    public func find_blank(state: ArrayList<ArrayList<Int64>>): (Int64, Int64) {
        /*
        Find the blank position of current state, which is the 0 element.
        :param state: a 3*3 size list of Integer, stores the current state.
        :return i, j: two Integers, represent the coordinate of the blank block.
        >>> eightPuzzle = EightPuzzle(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([2, 3, 4]), ArrayList<Int64>([5, 8, 1]), ArrayList<Int64>([6, 0, 7])]))
        >>> eightPuzzle.find_blank(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([2, 3, 4]), ArrayList<Int64>([5, 8, 1]), ArrayList<Int64>([6, 0, 7])]))
        (2, 1)
        */
        
    }

    public func move(state: ArrayList<ArrayList<Int64>>, direction: String): ArrayList<ArrayList<Int64>> {
        /*
        Find the blank block, then makes the board moves forward the given direction.
        :param state: a 3*3 size list of Integer, stores the state before moving.
        :param direction: String, only has 4 direction 'up', 'down', 'left', 'right'
        :return new_state: a 3*3 size list of Integer, stores the state after moving.
        >>> eightPuzzle.move(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([2, 3, 4]), ArrayList<Int64>([5, 8, 1]), ArrayList<Int64>([6, 0, 7])]), 'left')
        [[2, 3, 4], [5, 8, 1], [0, 6, 7]]
        */
        
    }

    public func get_possible_moves(state: ArrayList<ArrayList<Int64>>): ArrayList<String> {
        /*
        According the current state, find all the possible moving directions. Only has 4 direction 'up', 'down', 'left', 'right'.
        :param state: a 3*3 size list of Integer, stores the current state.
        :return moves: a list of String, store all the possible moving directions according to the current state.
        >>> eightPuzzle.get_possible_moves(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([2, 3, 4]), ArrayList<Int64>([5, 8, 1]), ArrayList<Int64>([6, 0, 7])]))
        ['up', 'left', 'right']
        */
        
    }

    public func solve(): ArrayList<String> {
        /*
        Use BFS algorithm to find the path solution which makes the initial state to the goal method.
        Maintain a list as a queue, named as open_list, append the initial state.
        Always visit and pop the 0 index element, invoke get_possible_moves method find all the possible directions.
        Traversal the possible_moves list and invoke move method to get several new states.Then append them.
        redo the above steps until the open_list is empty or the state has changed to the goal state.
        :return path: list of String, the solution to the goal state.
        >>> eightPuzzle = EightPuzzle(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6]), ArrayList<Int64>([7, 0, 8])]))
        >>> eightPuzzle.solve()
        ['right']
        */
        
    }
}

