#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.HashMap
import std.collection.ArrayList
import std.math.round
import std.math.abs
import std.sort.sort

class DataStatistics {

    public func mean(data: ArrayList<Int64>): Float64 {
        var sum = 0
        for (i in data) {
            sum += i
        }
        return round(Float64(sum) / Float64(data.size) * 100.0) / 100.0
    }

    public func median(data: ArrayList<Int64>): Float64 {
        let sorted_data = data.clone()
        sort(sorted_data)
        let n = sorted_data.size
        if (n % 2 == 0) {
            let middle = n / 2
            return round((Float64(sorted_data[middle - 1]) + Float64(sorted_data[middle])) / 2.0 * 100.0) / 100.0
        } else {
            let middle = n / 2
            return Float64(sorted_data[middle])
        }
    }

    public func mode(data: ArrayList<Int64>): ArrayList<Int64> {
        let counter = HashMap<Int64, Int64>()
        for (item in data) {
            if (counter.contains(item)) {
                counter[item] = counter[item] + 1
            } else {
                counter[item] = 1
            }
        }
        var mode_count = 0
        for ((k, v) in counter) {
            if (v > mode_count) {
                mode_count = v
            }
        }
        let mode = ArrayList<Int64>()
        for ((k, v) in counter) {
            if (v == mode_count) {
                mode.add(k)
            }
        }
        return mode
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
