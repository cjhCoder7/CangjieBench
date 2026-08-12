import std.collection.ArrayList

class TicTacToe {

    /*
    The class represents a game of Tic-Tac-Toe and its functions include making a move on the board, checking for a winner, and determining if the board is full.
    */

    let board: ArrayList<ArrayList<String>>
    var current_player: String

    public init(N!: Int64 = 3) {
        /*
        Initialize a 3x3 game board with all empty spaces and current symble player, default is 'X'.
        */
        this.board = ArrayList<ArrayList<String>>()
        for (_ in 0..3) {
            let row = ArrayList<String>()
            for (_ in 0..N) {
                row.add(' ')
            }
            this.board.add(row)
        }
        this.current_player = 'X'
    }

    public func make_move(row: Int64, col: Int64): Bool {
        /*
        Place the current player's mark at the specified position on the board and switch the mark.
        :param row: Int64, the row index of the position
        :param col: Int64, the column index of the position
        :return: Bool, indicating whether the move was successful or not
        >>> ttt.current_player
        'X'
        >>> ttt.make_move(1, 1)
        >>> ttt.current_player
        'O'
        */
        
    }

    public func check_winner(): Option<String> {
        /*
        Check if there is a winner on the board in rows, columns and diagonals three directions
        :return: Option<String>, the mark of the winner ('X' or 'O'), or None if there is no winner yet
        >>> moves = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 0]), ArrayList<Int64>([2, 0]), ArrayList<Int64>([1, 1]), ArrayList<Int64>([2, 1]), ArrayList<Int64>([1, 2])])
        >>> for move in moves:
        ...     ttt.make_move(move[0], move[1])
        >>> ttt.check_winner()
        'X'
        */
        
    }

    public func is_board_full(): Bool {
        /*
        Check if the game board is completely filled.
        :return: Bool, indicating whether the game board is full or not
        >>> ttt.is_board_full()
        false
        */
        
    }
}

