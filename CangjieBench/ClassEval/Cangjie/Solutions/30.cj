import std.collection.ArrayList
import std.math.round
import std.math.sqrt
import std.math.abs

class DataStatistics2 {

    let data: ArrayList<Float64>

    public init(data: ArrayList<Float64>) {
        this.data = data
    }

    public func get_sum(): Float64 {
        var sum: Float64 = 0.0
        for (i in data) {
            sum += i
        }
        return sum
    }

    public func get_min(): Float64 {
        var min = Float64.Max
        for (i in data) {
            if (i < min) {
                min = i
            }
        }
        return min
    }

    public func get_max(): Float64 {
        var max = Float64.Min
        for (i in data) {
            if (i > max) {
                max = i
            }
        }
        return max
    }

    public func get_variance(): Float64 {
        let mean = get_sum() / Float64(data.size)
        var variance: Float64 = 0.0
        for (i in data) {
            variance += (i - mean) * (i - mean)
        }
        return round(variance / Float64(data.size) * 100.0) / 100.0
    }

    public func get_std_deviation(): Float64 {
        let variance = get_variance()
        return round(sqrt(variance) * 100.0) / 100.0
    }

    public func get_correlation(): Float64 {
        return 1.0
    }
}
