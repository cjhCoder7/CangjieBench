#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'

func change_base(x: Int64, base: Int64): String {
    /*
    Change numerical base of input number x to base.
    return string representation after the conversion.
    base numbers are less than 10.
    >>> change_base(8, 3)
    '22'
    >>> change_base(8, 2)
    '1000'
    >>> change_base(7, 2)
    '111'
    */
    var ret = ""
    var x_ = x
    while (x_ > 0) {
        ret = (x_ % base).toString() + ret
        x_ = x_ / base
    }
    return ret
}
__CANGJIEBENCH_SOLUTION__
