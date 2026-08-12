#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList

class PushBoxGame {

    let map: ArrayList<ArrayList<String>>
    var player_row: Int64
    var player_col: Int64
    let targets: ArrayList<ArrayList<Int64>>
    let boxes: ArrayList<ArrayList<Int64>>
    var target_count: Int64
    var is_game_over: Bool

    public init(map: ArrayList<ArrayList<String>>) {
        this.map = map
        this.player_row = 0
        this.player_col = 0
        this.targets = ArrayList<ArrayList<Int64>>()
        this.boxes = ArrayList<ArrayList<Int64>>()
        this.target_count = 0
        this.is_game_over = false

        func init_game() {
            for (row in 0..map.size) {
                for (col in 0..map[row].size) {
                    if (this.map[row][col] == "O") {
                        this.player_row = row
                        this.player_col = col
                    } else if (this.map[row][col] == "G") {
                        this.targets.add(ArrayList<Int64>([row, col]))
                        this.target_count += 1
                    } else if (this.map[row][col] == "X") {
                        this.boxes.add(ArrayList<Int64>([row, col]))
                    }
                }
            }
        }
        init_game()
    }

    public func check_win(): Bool {
        var box_on_target_count = 0
        for (box in boxes) {
            if (this.targets.contains(box)) {
                box_on_target_count += 1
            }
        }
        if (box_on_target_count == this.target_count) {
            this.is_game_over = true
        }
        return this.is_game_over
    }

    public func move(direction: String): Bool {
        var new_player_row = this.player_row
        var new_player_col = this.player_col

        if (direction == "w") {
            new_player_row -= 1
        } else if (direction == "s") {
            new_player_row += 1
        } else if (direction == "a") {
            new_player_col -= 1
        } else if (direction == "d") {
            new_player_col += 1
        }

        if (this.map[new_player_row][new_player_col] != "#") {
            if (this.boxes.contains(ArrayList<Int64>([new_player_row, new_player_col]))) {
                let new_box_row = new_player_row + (new_player_row - this.player_row)
                let new_box_col = new_player_col + (new_player_col - this.player_col)

                if (this.map[new_box_row][new_box_col] != "#") {
                    var index = -1
                    for (i in 0..boxes.size) {
                        if (this.boxes[i] == ArrayList<Int64>([new_player_row, new_player_col])) {
                            index = i
                            break
                        }
                    }
                    this.boxes.remove(at: index)
                    this.boxes.add(ArrayList<Int64>([new_box_row, new_box_col]))
                    this.player_row = new_player_row
                    this.player_col = new_player_col
                }
            } else {
                this.player_row = new_player_row
                this.player_col = new_player_col
            }
        }

        return this.check_win()
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
