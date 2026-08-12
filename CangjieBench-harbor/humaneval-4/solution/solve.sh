#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.math.abs

func mean_absolute_deviation(numbers: ArrayList<Float64>): Float64 {
    /*
    For a given list of input numbers, calculate Mean Absolute Deviation
    around the mean of this dataset.
    Mean Absolute Deviation is the average absolute difference between each
    element and a centerpoint (mean in this case):
    MAD = average | x - x_mean |
    >>> mean_absolute_deviation(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
    1.0
    */
    var sum: Float64 = 0.0
    for (i in numbers) {
        sum += i
    }
    var mean: Float64 = sum / Float64(numbers.size)
    var md: Float64 = 0.0
    for (i in numbers) {
        md += abs(i - mean)
    }
    return md / Float64(numbers.size)
}
__CANGJIEBENCH_SOLUTION__
