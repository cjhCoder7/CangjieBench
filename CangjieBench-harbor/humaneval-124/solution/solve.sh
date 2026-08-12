#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.convert.Parsable

func valid_date(date: String): Bool {
    /*
    You have to write a function which validates a given date string and
    returns true if the date is valid otherwise false.
    The date is valid if all of the following rules are satisfied:
    1. The date string is not empty.
    2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
    3. The months should not be less than 1 or higher than 12.
    4. The date should be in the format: mm-dd-yyyy

    for example: 
    valid_date('03-11-2000') => true

    valid_date('15-01-2012') => false

    valid_date('04-0-2040') => false

    valid_date('06-04-2020') => true

    valid_date('06/04/2020') => false
    */
    let arr = date.split("-")
    if (arr.size != 3) {
        return false
    }
    let month = Int64.parse(arr[0])
    let day = Int64.parse(arr[1])
    let year = Int64.parse(arr[2])
    if (month < 1 || month > 12) {
        return false
    }
    if ([1, 3, 5, 7, 8, 10, 12].contains(month) && (day < 1 || day > 31)) {
        return false
    }
    if ([4, 6, 9, 11].contains(month) && (day < 1 || day > 30)) {
        return false
    }
    if (month == 2 && (day < 1 || day > 29)) {
        return false
    }
    return true
}
__CANGJIEBENCH_SOLUTION__
