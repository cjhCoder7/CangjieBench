import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs
import std.sort.sort
import std.math.sqrt

class Statistics3 {

    public static func median(data: ArrayList<Int64>): Float64 {
        sort(data)
        let n = data.size
        if (n % 2 == 1) {
            return Float64(data[n / 2])
        } else {
            return Float64(data[n / 2 - 1] + data[n / 2]) / 2.0
        }
    }

    public static func mode(data: ArrayList<Int64>): ArrayList<Int64> {
        let counts = HashMap<Int64, Int64>()
        for (value in data) {
            counts[value] = (counts.get(value) ?? 0) + 1
        }
        var max_count = -1
        for ((_, value) in counts) {
            if (value > max_count) {
                max_count = value
            }
        }
        var mode_values = ArrayList<Int64>()
        for ((value, count) in counts) {
            if (count == max_count) {
                mode_values.add(value)
            }
        }
        return mode_values
    }

    public static func correlation(x: ArrayList<Int64>, y: ArrayList<Int64>): Option<Float64> {
        let n = x.size
        var sum_x = 0
        var sum_y = 0
        for (i in 0..n) {
            sum_x += x[i]
            sum_y += y[i]
        }
        let mean_x = Float64(sum_x) / Float64(n)
        let mean_y = Float64(sum_y) / Float64(n)
        var numerator = 0.0
        for (i in 0..n) {
            numerator += (Float64(x[i]) - mean_x) * (Float64(y[i]) - mean_y)
        }
        var denominator_1 = 0.0
        for (i in 0..n) {
            denominator_1 += (Float64(x[i]) - mean_x) ** 2
        }
        var denominator_2 = 0.0
        for (i in 0..n) {
            denominator_2 += (Float64(y[i]) - mean_y) ** 2
        }
        var denominator = sqrt(denominator_1 * denominator_2)
        if (denominator == 0.0) {
            return None
        }
        return numerator / denominator
    }

    public static func mean(data: ArrayList<Int64>): Option<Float64> {
        let n = data.size
        if (n == 0) {
            return None
        }
        var sum = 0
        for (i in 0..n) {
            sum += data[i]
        }
        return Float64(sum) / Float64(n)
    }

    public static func correlation_matrix(data: ArrayList<ArrayList<Int64>>): ArrayList<ArrayList<Float64>> {
        let matrix = ArrayList<ArrayList<Float64>>()
        for (i in 0..data[0].size) {
            let row = ArrayList<Float64>()
            for (j in 0..data[0].size) {
                let column1 = ArrayList<Int64>()
                let column2 = ArrayList<Int64>()
                for (row in data) {
                    column1.add(row[i])
                    column2.add(row[j])
                }
                let correlation = Statistics3.correlation(column1, column2) ?? 0.0
                row.add(correlation)
            }
            matrix.add(row)
        }
        return matrix
    }

    public static func standard_deviation(data: ArrayList<Int64>): Option<Float64> {
        let n = data.size
        if (n < 2) {
            return None
        }
        let mean_value = Statistics3.mean(data) ?? 0.0
        var variance = 0.0
        for (x in data) {
            variance += (Float64(x) - mean_value) ** 2
        }
        variance /= Float64(n - 1)
        return sqrt(variance)
    }

    public static func z_score(data: ArrayList<Int64>): Option<ArrayList<Float64>> {
        let mean = Statistics3.mean(data) ?? 0.0
        let std_deviation = Statistics3.standard_deviation(data) ?? 0.0
        if (std_deviation == 0.0) {
            return None
        }
        let arr = ArrayList<Float64>()
        for (x in data) {
            arr.add((Float64(x) - mean) / std_deviation)
        }
        return arr
    }
}

