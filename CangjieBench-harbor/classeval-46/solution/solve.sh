#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList

class Interpolation {

    public static func interpolate_1d(x: ArrayList<Float64>, y: ArrayList<Float64>, x_interp: ArrayList<Float64>): ArrayList<Float64> {
        let y_interp = ArrayList<Float64>()
        for (xi in x_interp) {
            for (i in 0..x.size-1) {
                if (xi >= x[i] && xi <= x[i+1]) {
                    let yi = y[i] + (y[i+1] - y[i]) * (xi - x[i]) / (x[i+1] - x[i])
                    y_interp.add(yi)
                    break
                }
            }
        }
        return y_interp
    }

    public static func interpolate_2d(x: ArrayList<Float64>, y: ArrayList<Float64>, z: ArrayList<ArrayList<Float64>>, x_interp: ArrayList<Float64>, y_interp: ArrayList<Float64>): ArrayList<Float64> {
        let z_interp = ArrayList<Float64>()
        for (k in 0..x_interp.size) {
            let xi = x_interp[k]
            let yi = y_interp[k]
            for (i in 0..x.size-1) {
                if (xi >= x[i] && xi <= x[i+1]) {
                    for (j in 0..y.size-1) {
                        if (yi >= y[j] && yi <= y[j+1]) {
                            let z00 = z[i][j]
                            let z01 = z[i][j+1]
                            let z10 = z[i+1][j]
                            let z11 = z[i+1][j+1]
                            let zi = (z00 * (x[i+1] - xi) * (y[j+1] - yi) +
                                  z10 * (xi - x[i]) * (y[j+1] - yi) +
                                  z01 * (x[i+1] - xi) * (yi - y[j]) +
                                  z11 * (xi - x[i]) * (yi - y[j])) / ((x[i+1] - x[i]) * (y[j+1] - y[j]))
                            z_interp.add(zi)
                            break
                        }
                    }
                    break
                }
            }
        }
        return z_interp
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
