import std.collection.ArrayList
import std.collection.HashSet
import std.random.Random

class MahjongConnect {

    let BOARD_SIZE: ArrayList<Int64>
    let ICONS: ArrayList<String>
    var board: ArrayList<ArrayList<String>>

    public init(BOARD_SIZE: ArrayList<Int64>, ICONS: ArrayList<String>) {
        this.BOARD_SIZE = BOARD_SIZE
        this.ICONS = ICONS
        this.board = create_board(BOARD_SIZE, ICONS)
    }

    public static func create_board(BOARD_SIZE: ArrayList<Int64>, ICONS: ArrayList<String>): ArrayList<ArrayList<String>> {
        let board = ArrayList<ArrayList<String>>()
        for (_ in 0..BOARD_SIZE[0]) {
            let row = ArrayList<String>()
            for (_ in 0..BOARD_SIZE[1]) {
                let r = Random()
                let index = r.nextInt64(ICONS.size)
                row.add(ICONS[index])
            }
            board.add(row)
        }
        return board
    }

    public func is_valid_move(pos1: (Int64, Int64), pos2: (Int64, Int64)): Bool {
        let x1 = pos1[0]
        let y1 = pos1[1]
        let x2 = pos2[0]
        let y2 = pos2[1]

        // Check if positions are within the game board range
        if (!(0 <= x1 && x1 < this.BOARD_SIZE[0] && 0 <= y1 && y1 < this.BOARD_SIZE[1] && 0 <= x2 && x2 < this.BOARD_SIZE[0] && 0 <= y2 && y2 < this.BOARD_SIZE[1])) {
            return false
        }

        // Check if the two positions are the same
        if (pos1 == pos2) {
            return false
        }

        // Check if the two positions have the same icon
        if (this.board[x1][y1] != this.board[x2][y2]) {
            return false
        }

        // Check if there is a valid path between the two positions
        if (!this.has_path(pos1, pos2)) {
            return false
        }

        return true
    }

    public func has_path(pos1: (Int64, Int64), pos2: (Int64, Int64)): Bool {
        let visited = ArrayList<(Int64, Int64)>()
        let stack = ArrayList<(Int64, Int64)>([pos1])
        
        while (stack.size > 0) {
            let current_pos = stack.remove(at: stack.size - 1)
            if (current_pos == pos2) {
                return true
            }

            if (contains(visited, current_pos)) {
                continue
            }

            visited.add(current_pos)
            let (x, y) = current_pos

            // Check adjacent positions (up, down, left, right)
            for ((dx, dy) in [(0, 1), (0, -1), (1, 0), (-1, 0)]) {
                let new_x = x + dx
                let new_y = y + dy
                if (0 <= new_x && new_x < this.BOARD_SIZE[0] && 0 <= new_y && new_y < this.BOARD_SIZE[1]) {
                    if (!contains(visited, (new_x, new_y)) && this.board[new_x][new_y] == this.board[x][y]) {
                        stack.add((new_x, new_y))
                    }
                }
            }
        }

        return false
    }

    public static func contains(visited: ArrayList<(Int64, Int64)>, pos: (Int64, Int64)): Bool {
        for (v in visited) {
            if (v == pos) {
                return true
            }
        }
        return false
    }

    public func remove_icons(pos1: (Int64, Int64), pos2: (Int64, Int64)): Unit {
        let (x1, y1) = pos1
        let (x2, y2) = pos2
        this.board[x1][y1] = " "
        this.board[x2][y2] = " "
    }

    public func is_game_over(): Bool {
        for (row in this.board) {
            var flag = false
            for (icon in row) {
                if (icon != " ") {
                    flag = true
                    break
                }
            }
            if (flag) {
                return false
            }
        }
        return true
    }
}

