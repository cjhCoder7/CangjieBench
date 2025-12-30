import std.collection.ArrayList

class EightPuzzle {

    let initial_state: ArrayList<ArrayList<Int64>>
    let goal_state: ArrayList<ArrayList<Int64>>

    public init(initial_state: ArrayList<ArrayList<Int64>>) {
        this.initial_state = initial_state
        this.goal_state = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6]), ArrayList<Int64>([7, 8, 0])])
    }

    public func find_blank(state: ArrayList<ArrayList<Int64>>): (Int64, Int64) {
        for (i in 0..3) {
            for (j in 0..3) {
                if (state[i][j] == 0) {
                    return (i, j)
                }
            }
        }
        return (0, 0)
    }

    public func move(state: ArrayList<ArrayList<Int64>>, direction: String): ArrayList<ArrayList<Int64>> {
        let (i, j) = this.find_blank(state)
        let new_state = ArrayList<ArrayList<Int64>>()
        for (row in state) {
            new_state.add(ArrayList<Int64>(row))
        }

        if (direction == 'up') {
            let temp = new_state[i][j]
            new_state[i][j] = new_state[i - 1][j]
            new_state[i - 1][j] = temp
        } else if (direction == 'down') {
            let temp = new_state[i][j]
            new_state[i][j] = new_state[i + 1][j]
            new_state[i + 1][j] = temp
        } else if (direction == 'left') {
            let temp = new_state[i][j]
            new_state[i][j] = new_state[i][j - 1]
            new_state[i][j - 1] = temp
        } else if (direction == 'right') {
            let temp = new_state[i][j]
            new_state[i][j] = new_state[i][j + 1]
            new_state[i][j + 1] = temp
        }
        return new_state
    }

    public func get_possible_moves(state: ArrayList<ArrayList<Int64>>): ArrayList<String> {
        let moves = ArrayList<String>()
        let (i, j) = this.find_blank(state)
        if (i > 0) {
            moves.add('up')
        }
        if (i < 2) {
            moves.add('down')
        }
        if (j > 0) {
            moves.add('left')
        }
        if (j < 2) {
            moves.add('right')
        }
        return moves
    }

    public func solve(): ArrayList<String> {
        let open_list = ArrayList<(ArrayList<ArrayList<Int64>>, ArrayList<String>)>()
        let closed_list = ArrayList<ArrayList<ArrayList<Int64>>>()
        open_list.add((this.initial_state, ArrayList<String>()))

        while (open_list.size > 0) {
            let (current_state, path) = open_list.remove(at: 0)
            closed_list.add(current_state)

            if (current_state == this.goal_state) {
                return path
            }

            let moves = this.get_possible_moves(current_state)
            for (move in moves) {
                let new_state = this.move(current_state, move)
                if (closed_list.contains(new_state)) {
                    continue
                }
                let new_path = ArrayList<String>(path)
                new_path.add(move)
                open_list.add((new_state, new_path))
            }
        }

        return ArrayList<String>()
    }
}

