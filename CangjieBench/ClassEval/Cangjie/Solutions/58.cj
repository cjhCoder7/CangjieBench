import std.collection.ArrayList
import std.random.Random
import std.convert.Parsable

class MinesweeperGame {

    let n: Int64
    let k: Int64
    var minesweeper_map: ArrayList<ArrayList<String>>
    var player_map: ArrayList<ArrayList<String>>
    var score: Int64

    public init(n: Int64, k: Int64) {
        this.n = n
        this.k = k
        this.minesweeper_map = generate_mine_sweeper_map(n, k)
        this.player_map = generate_playerMap(n)
        this.score = 0
    }

    public static func generate_mine_sweeper_map(n: Int64, k: Int64): ArrayList<ArrayList<String>> {
        let arr = ArrayList<ArrayList<String>>()
        for (column in 0..n) {
            let temp = ArrayList<String>()
            for (row in 0..n) {
                temp.add('0')
            }
            arr.add(temp)
        }

        for (num in 0..k) {
            let r = Random()
            let x = r.nextInt64(n)
            let y = r.nextInt64(n)
            arr[y][x] = 'X'

            if ((x >=0 && x <= n-2) && (y >= 0 && y <= n-1)) {
                if (arr[y][x+1] != 'X') {
                    let temp = Int64.parse(arr[y][x+1])
                    arr[y][x+1] = (temp + 1).toString()
                }
            }
                
            if ((x >=1 && x <= n-1) && (y >= 0 && y <= n-1)) {
                if (arr[y][x-1] != 'X') {
                    let temp = Int64.parse(arr[y][x-1])
                    arr[y][x-1] = (temp + 1).toString()
                }
            }

            if ((x >= 1 && x <= n-1) && (y >= 1 && y <= n-1)) {
                if (arr[y-1][x-1] != 'X') {
                    let temp = Int64.parse(arr[y-1][x-1])
                    arr[y-1][x-1] = (temp + 1).toString()
                }
            }
    
            if ((x >= 0 && x <= n-2) && (y >= 1 && y <= n-1)) {
                if (arr[y-1][x+1] != 'X') {
                    let temp = Int64.parse(arr[y-1][x+1])
                    arr[y-1][x+1] = (temp + 1).toString()
                }
            }

            if ((x >= 0 && x <= n-1) && (y >= 1 && y <= n-1)) {
                if (arr[y-1][x] != 'X') {
                    let temp = Int64.parse(arr[y-1][x])
                    arr[y-1][x] = (temp + 1).toString()
                }
            }
    
            if ((x >=0 && x <= n-2) && (y >= 0 && y <= n-2)) {
                if (arr[y+1][x+1] != 'X') {
                    let temp = Int64.parse(arr[y+1][x+1])
                    arr[y+1][x+1] = (temp + 1).toString()
                }
            }

            if ((x >= 1 && x <= n-1) && (y >= 0 && y <= n-2)) {
                if (arr[y+1][x-1] != 'X') {
                    let temp = Int64.parse(arr[y+1][x-1])
                    arr[y+1][x-1] = (temp + 1).toString()
                }
            }

            if ((x >= 0 && x <= n-1) && (y >= 0 && y <= n-2)) {
                if (arr[y+1][x] != 'X') {
                    let temp = Int64.parse(arr[y+1][x])
                    arr[y+1][x] = (temp + 1).toString()
                }
            }
        }
        return arr
    }

    public static func generate_playerMap(n: Int64): ArrayList<ArrayList<String>> {
        let arr = ArrayList<ArrayList<String>>()
        for (column in 0..n) {
            let temp = ArrayList<String>()
            for (row in 0..n) {
                temp.add('-')
            }
            arr.add(temp)
        }
        return arr
    }

    public func check_won(map: ArrayList<ArrayList<String>>): Bool {
        for (i in 0..n) {
            for (j in 0..n) {
                if (map[i][j] == '-' && this.minesweeper_map[i][j] != 'X') {
                    return false
                }
            }
        }
        return true
    }

    public func sweep(x: Int64, y: Int64): Any {
        if (this.minesweeper_map[x][y] == 'X') {
            return false
        } else {
            this.player_map[x][y] = this.minesweeper_map[x][y]
            this.score += 1
            if (this.check_won(this.player_map) == true) {
                return true
            }
            return this.player_map
        }
    }
}

