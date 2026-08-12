#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList

class GomokuGame {

    let board_size: Int64
    let board: ArrayList<ArrayList<String>>
    var current_player: String

    public init(board_size: Int64) {
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
        if (this.board[row][col] == " ") {
            this.board[row][col] = this.current_player
            if (this.current_player == "X") {
                this.current_player = "O"
            } else {
                this.current_player = "X"
            }
            return true
        }
        return false
    }

    public func check_winner(): Option<String> {
        let directions: ArrayList<(Int64, Int64)> = ArrayList<(Int64, Int64)>([(0, 1), (1, 0), (1, 1), (1, -1)])
        for (row in 0..this.board_size) {
            for (col in 0..this.board_size) {
                if (this.board[row][col] != ' ') {
                    for (direction in directions) {
                        if (this._check_five_in_a_row(row, col, direction)) {
                            return this.board[row][col]
                        }
                    }
                }
            }
        }
        return None
    }

    public func _check_five_in_a_row(row: Int64, col: Int64, direction: (Int64, Int64)): Bool {
        let (dx, dy) = direction
        var count = 1
        let symbol = this.board[row][col]
        for (i in 1..5) {
            let new_row = row + dx * i
            let new_col = col + dy * i
            if (!(0 <= new_row && new_row < this.board_size && 0 <= new_col && new_col < this.board_size)) {
                return false
            }
            if (this.board[new_row][new_col] != symbol) {
                return false
            }
            count += 1
        }
        return count == 5
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
