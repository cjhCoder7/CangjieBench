#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.math.trunc

func any_int(x: Float64, y: Float64, z: Float64): Bool {
    /*
    Create a function that takes 3 numbers.
    Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
    Returns false in any other cases.
    
    Examples
    any_int(5.0, 2.0, 7.0) ➞ true
    
    any_int(3.0, 2.0, 2.0) ➞ false

    any_int(3.0, -2.0, 1.0) ➞ true
    
    any_int(3.6, -2.2, 2.0) ➞ false
    */
    if (trunc(x) == x && trunc(y) == y && trunc(z) == z) {
        if (x+y == z || x+z == y || y+z == x) {
            return true
        }
        return false
    }
    return false
}
__CANGJIEBENCH_SOLUTION__
