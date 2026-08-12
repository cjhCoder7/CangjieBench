#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList
import std.math.sqrt
import std.math.exp
import std.math.abs

class DataStatistics4 {

    public static func correlation_coefficient(data1: ArrayList<Float64>, data2: ArrayList<Float64>): Float64 {
        let n = data1.size
        var sum1 = 0.0
        for (i in data1) {
            sum1 += i
        }
        let mean1 = sum1 / Float64(n)
        var sum2 = 0.0
        for (i in data2) {
            sum2 += i
        }
        let mean2 = sum2 / Float64(n)

        var numerator = 0.0
        for (i in 0..n) {
            numerator += (data1[i] - mean1) * (data2[i] - mean2)
        }
        var denominator1 = 0.0
        for (i in 0..n) {
            denominator1 += (data1[i] - mean1) * (data1[i] - mean1)
        }
        var denominator2 = 0.0
        for (i in 0..n) {
            denominator2 += (data2[i] - mean2) * (data2[i] - mean2)
        }
        let denominator = sqrt(denominator1) * sqrt(denominator2)

        return if (denominator != 0.0) {
            numerator / denominator
        } else {
            0.0
        }
    }

    public static func skewness(data: ArrayList<Float64>): Float64 {
        let n = data.size
        var sum = 0.0
        for (i in data) {
            sum += i
        }
        let mean = sum / Float64(n)

        var variance = 0.0
        for (x in data) {
            variance += (x - mean) * (x - mean)
        }
        variance /= Float64(n)

        let std_deviation = sqrt(variance)

        var skewness = 0.0

        if (std_deviation != 0.0) {
            for (x in data) {
                skewness += (x - mean) * (x - mean) * (x - mean)
            }
            skewness *= Float64(n) / (Float64(n - 1) * Float64(n - 2) * std_deviation ** 3)
        }
        return skewness
    }

    public static func kurtosis(data: ArrayList<Float64>): Float64 {
        let n = data.size
        var sum = 0.0
        for (i in data) {
            sum += i
        }
        let mean = sum / Float64(n)

        var std_dev = 0.0
        for (x in data) {
            std_dev += (x - mean) * (x - mean)
        }
        std_dev /= Float64(n)
        std_dev = sqrt(std_dev)

        if (std_dev == 0.0) {
            return Float64.NaN
        }

        let centered_data = ArrayList<Float64>()
        for (x in data) {
            centered_data.add(x - mean)
        }

        var fourth_moment = 0.0
        for (x in centered_data) {
            fourth_moment += x ** 4
        }
        fourth_moment /= Float64(n)

        let kurtosis_value = (fourth_moment / std_dev ** 4) - 3.0
        return kurtosis_value
    }

    public static func pdf(data: ArrayList<Float64>, mu: Float64, sigma: Float64): ArrayList<Float64> {
        let pdf_values = ArrayList<Float64>()
        for (x in data) {
            let pdf_value = (1.0 / (sigma * sqrt(2.0 * 3.1415926))) * exp(-0.5 * ((x - mu) / sigma) ** 2)
            pdf_values.add(pdf_value)
        }
        return pdf_values
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
