import std.collection.ArrayList
import std.collection.HashSet
import std.random.Random

class MahjongConnect {

    /*
    MahjongConnect is a class representing a game board for Mahjong Connect with features like creating the board, checking valid moves, finding paths, removing icons, and checking if the game is over.
    */

    let BOARD_SIZE: ArrayList<Int64>
    let ICONS: ArrayList<String>
    var board: ArrayList<ArrayList<String>>

    public init(BOARD_SIZE: ArrayList<Int64>, ICONS: ArrayList<String>) {
        /*
        initialize the board size and the icon list, create the game board
        :param BOARD_SIZE: list of two integer numbers, representing the number of rows and columns of the game board
        :param ICONS: list of String, representing the icons
        >>>mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(['a', 'b', 'c']))
        mc.BOARD_SIZE = [4, 4]
        mc.ICONS = ['a', 'b', 'c']
        mc.board = mc.create_board()
        */
        this.BOARD_SIZE = BOARD_SIZE
        this.ICONS = ICONS
        this.board = create_board(BOARD_SIZE, ICONS)
    }

    public static func create_board(BOARD_SIZE: ArrayList<Int64>, ICONS: ArrayList<String>): ArrayList<ArrayList<String>> {
        /*
        create the game board with the given board size and icons
        :return: 2-dimensional list, the game board
        >>> mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(['a', 'b', 'c']))
        >>> mc.create_board()
        mc.board = [['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a']]
        */
        
    }

    public func is_valid_move(pos1: (Int64, Int64), pos2: (Int64, Int64)): Bool {
        /*
        check if the move of two icons is valid (i.e. positions are within the game board range, the two positions are not the same, the two positions have the same icon, and there is a valid path between the two positions)
        :param pos1: position Tuple(x, y) of the first icon
        :param pos2: position Tuple(x, y) of the second icon
        :return:true or false ,representing whether the move of two icons is valid
        >>> mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(['a', 'b', 'c']))
        mc.board = [['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a']]
        >>> mc.is_valid_move((0, 0), (1, 0))
        true
        */
        
    }

    public func has_path(pos1: (Int64, Int64), pos2: (Int64, Int64)): Bool {
        /*
        check if there is a path between two icons
        :param pos1: position Tuple(x, y) of the first icon
        :param pos2: position Tuple(x, y) of the second icon
        :return: true or false ,representing whether there is a path between two icons
        >>> mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(['a', 'b', 'c']))
        mc.board = [['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a']]
        >>> mc.has_path((0, 0), (1, 0))
        true
        */
        
    }

    public static func contains(visited: ArrayList<(Int64, Int64)>, pos: (Int64, Int64)): Bool {
        /*
        check if the position is in the visited list
        :param visited: list of position tuples, representing the visited positions
        :param pos: position tuple, representing the position to be checked
        :return: true or false, representing whether the position is in the visited list
        */
        for (v in visited) {
            if (v == pos) {
                return true
            }
        }
        return false
    }

    public func remove_icons(pos1: (Int64, Int64), pos2: (Int64, Int64)): Unit {
        /*
        remove the connected icons on the game board
        :param pos1: position tuple(x, y) of the first icon to be removed
        :param pos2: position tuple(x, y) of the second icon to be removed
        :return: Unit
        >>> mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(['a', 'b', 'c']))
        mc.board = [['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a']]
        >>> mc.remove_icons((0, 0), (1, 0))
        mc.board = [[' ', 'b', 'c', 'a'],
                    [' ', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a'],
                    ['a', 'b', 'c', 'a']]
        */
        
    }

    public func is_game_over(): Bool {
        /*
        Check if the game is over (i.e., if there are no more icons on the game board)
        :return: true or false ,representing whether the game is over
        >>> mc = MahjongConnect(ArrayList<Int64>([4, 4]), ArrayList<String>(['a', 'b', 'c']))
        >>> mc.board = [[' ', ' ', ' ', ' '],
        >>>         [' ', ' ', ' ', ' '],
        >>>         [' ', ' ', ' ', ' '],
        >>>         [' ', ' ', ' ', ' ']]
        >>> mc.is_game_over()
        true
        */
        
    }
}

