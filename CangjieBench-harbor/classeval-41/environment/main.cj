import std.collection.ArrayList

class GomokuGame {

    /*
    This class is an implementation of a Gomoku game, supporting for making moves, checking for a winner, and checking if there are five consecutive symbols on the game board.
    */

    let board_size: Int64
    let board: ArrayList<ArrayList<String>>
    var current_player: String

    public init(board_size: Int64) {
        /*
        Initializes the game with a given board size.
        It initializes the board with empty spaces and sets the current player symbol as 'X'.
        */
        this.board_size = board_size
        this.board = ArrayList<ArrayList<String>>()
        this.current_player = "X"
        for (_ in 0..board_size) {
            let row: ArrayList<String> = ArrayList<String>()
            for (_ in 0..board_size) {
                row.add(" ")
            }
            board.add(row)
        }
    }

    public func make_move(row: Int64, col: Int64): Bool {
        /*
        Makes a move at the given row and column.
        If the move is valid, it places the current player's symbol on the board
        and changes the current player to the other player (if the current player is 'X', then it becomes 'O' and vice versa).
        :param row: Int64, the row index of this move
        :param col: Int64, the column index
        return: true if the move is valid, or false otherwise.
        >>> gomokuGame = GomokuGame(10)
        >>> gomokuGame.make_move(5, 5)
        true
        >>> gomokuGame.make_move(5, 5)
        false
        */
        
    }

    public func check_winner(): Option<String> {
        /*
        Checks if there is a winner by looking for five in a row in all directions (horizontal, vertical, diagonal).
        return: the symbol of the winning player (either 'X' or 'O') if there is a winner, or None otherwise.
        >>> gomokuGame = GomokuGame(10)
        >>> moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 1)]
        >>> for (move in moves) {
        ...     gomokuGame.make_move(move[0], move[1])
        ... }
        >>> gomokuGame.check_winner()
        'X'
        */
        
    }

    public func _check_five_in_a_row(row: Int64, col: Int64, direction: (Int64, Int64)): Bool {
        /*
        checks if there are five consecutive symbols of the same player in a row starting from a given cell in a given direction (horizontal, vertical, diagonal).
        Counts the number of consecutive symbols in that direction starting from the given cell,
        :param row: Int64, row of the given cell
        :param col: Int64, column of the given cell
        :param direction: tuple, (Int64, Int64), named as (dx, dy). Row and col will plus several dx and dy repectively.
        :return: true if there are five consecutive symbols of the same player, and false otherwise.
        >>> gomokuGame = GomokuGame(10)
        >>> moves = [(5, 5), (0, 0), (5, 4), (0, 1), (5, 3), (0, 2), (5, 2), (0, 3), (5, 1)]
        >>> for (move in moves) {
        ...     gomokuGame.make_move(move[0], move[1])
        ... }
        >>> gomokuGame._check_five_in_a_row(5, 1, (0, 1))
        true
        >>> gomokuGame._check_five_in_a_row(5, 1, (1, 1))
        false
        */
        
    }
}
