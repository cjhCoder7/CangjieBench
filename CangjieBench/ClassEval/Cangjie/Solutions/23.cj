import std.collection.ArrayList

class CombinationCalculator {

    let datas: ArrayList<String>

    public init(datas: ArrayList<String>) {
        this.datas = datas
    }

    public static func factorial(n: Int64): Int64 {
        var result = 1
        for (i in 1..n + 1) {
            result *= i
        }
        return result
    }

    public static func count(n: Int64, m: Int64): Int64 {
        if (m == 0 || n == m) {
            return 1
        }
        return factorial(n) / (factorial(m) * factorial(n - m))
    }

    public static func count_all(n: Int64): Int64 {
        if (n < 0 || n > 63) {
            return Int64.Min
        }
        return if (n != 63) {
            (1 << n) - 1
        } else {
            Int64.Max
        }
    }

    public func select(m: Int64): ArrayList<ArrayList<String>> {
        let result = ArrayList<ArrayList<String>>()
        this._select(0, ArrayList<String>(Array<String>(m, repeat: "")), 0, result)
        return result
    }

    public func select_all(): ArrayList<ArrayList<String>> {
        let result = ArrayList<ArrayList<String>>()
        for (i in 1..this.datas.size + 1) {
            result.add(all: this.select(i))
        }
        return result
    }

    public func _select(dataIndex: Int64, resultList: ArrayList<String>, resultIndex: Int64, result: ArrayList<ArrayList<String>>): Unit {
        let resultLen = resultList.size
        let resultCount = resultIndex + 1
        if (resultCount > resultLen) {
            result.add(resultList.clone())
            return
        }

        for (i in dataIndex..this.datas.size + resultCount -  resultLen) {
            resultList[resultIndex] = this.datas[i]
            this._select(i + 1, resultList, resultIndex + 1, result)
        }
    }
}
