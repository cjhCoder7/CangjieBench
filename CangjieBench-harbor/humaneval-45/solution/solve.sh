#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func triangle_area(a: Float64, h: Float64): Float64 {
    /*
    Given length of a side and high return area for a triangle.
    >>> triangle_area(5.0, 3.0)
    7.5
    */
    return a * h / 2.0
}
__CANGJIEBENCH_SOLUTION__
