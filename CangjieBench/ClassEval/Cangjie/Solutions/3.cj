import std.collection.ArrayList

class ArrangementCalculator {

    let datas: ArrayList<Int64>

    public init(datas: ArrayList<Int64>) {
        this.datas = datas
    }

    public static func count(n: Int64, m: Option<Int64>): Int64 {
        if (m == None || n == (m ?? Int64.Min)) {
            return ArrangementCalculator.factorial(n)
        } else {
            return ArrangementCalculator.factorial(n) / ArrangementCalculator.factorial(n - (m ?? 0))
        }
    }

    public static func count_all(n: Int64): Int64 {
        var total = 0
        for (i in 1..n + 1) {
            total += ArrangementCalculator.count(n, Some(i))
        }
        return total
    }

    public func select(m: Option<Int64>): ArrayList<ArrayList<Int64>> {
        var m_ = m
        if (m_ == None) {
            m_ = Some(this.datas.size)
        }
        let result = ArrayList<ArrayList<Int64>>()
        select_permutations(ArrayList<Int64>(), ArrayList<Int64>(datas), m_ ?? Int64.Min, result)
        return result
    }

    public func select_all(): ArrayList<ArrayList<Int64>> {
        let result = ArrayList<ArrayList<Int64>>()
        for (i in 1..datas.size + 1) {
            result.add(all: select(Some(i)))
        }
        return result
    }

    public static func factorial(n: Int64): Int64 {
        var result = 1
        for (i in 2..n + 1) {
            result *= i
        }
        return result
    }

    public func select_permutations(prefix: ArrayList<Int64>, remaining: ArrayList<Int64>, m: Int64, result: ArrayList<ArrayList<Int64>>): Unit {
        if (prefix.size == m) {
            result.add(ArrayList<Int64>(prefix))
            return
        }
        for (i in 0..remaining.size) {
            let new_prefix = ArrayList<Int64>(prefix)
            new_prefix.add(remaining[i])
            let new_remaining = ArrayList<Int64>(remaining)
            new_remaining.remove(at: i)
            select_permutations(new_prefix, new_remaining, m, result)
        }
    }
}
