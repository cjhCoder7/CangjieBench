import std.collection.ArrayList

class TicTacToe {

    let board: ArrayList<ArrayList<String>>
    var current_player: String

    public init(N!: Int64 = 3) {
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
        if (this.board[row][col] == ' ') {
            this.board[row][col] = this.current_player
            if (this.current_player == 'X') {
                this.current_player = 'O'
            } else {
                this.current_player = 'X'
            }
            return true
        } else {
            return false
        }
    }

    public func check_winner(): Option<String> {
        for (row in this.board) {
            if (row[0] == row[1] && row[1] == row[2] && row[0] != ' ') {
                return row[0]
            }
        }
        for (col in 0..3) {
            if (this.board[0][col] == this.board[1][col] && this.board[1][col] == this.board[2][col] && this.board[0][col] != ' ') {
                return this.board[0][col]
            }
        }
        if (this.board[0][0] == this.board[1][1] && this.board[1][1] == this.board[2][2] && this.board[0][0] != ' ') {
            return this.board[0][0]
        }
        if (this.board[0][2] == this.board[1][1] && this.board[1][1] == this.board[2][0] && this.board[0][2] != ' ') {
            return this.board[0][2]
        }
        return None
    }

    public func is_board_full(): Bool {
        for (row in this.board) {
            if (row.contains(' ')) {
                return false
            }
        }
        return true
    }
}

