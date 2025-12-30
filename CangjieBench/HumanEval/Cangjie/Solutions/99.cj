import std.math.numeric.Decimal
import std.math.ceil
import std.math.floor
import std.math.round

func closest_integer(value: String): Int64 {
    /*
    Create a function that takes a value (string) representing a number
    and returns the closest integer to it. If the number is equidistant
    from two integers, round it away from zero.

    Examples
    >>> closest_integer("10")
    10
    >>> closest_integer("15.3")
    15

    Note:
    Rounding away from zero means that if the given number is equidistant
    from two integers, the one you should return is the one that is the
    farthest from zero. For example closest_integer("14.5") should
    return 15 and closest_integer("-14.5") should return -15.
    */
    var value_ = value
    if (value_.count(".") == 1) {
        // remove trailing zeros
        while(Rune(value_[value_.size - 1]).toString() == "0") {
            value_ = value_[..value_.size - 1]
        }
    }
    var num = Decimal.parse(value_).toFloat64()
    var res = 0
    if (value_.count(".") == 0) {
        return Int64(num)
    }
    if (value_[value_.size-2..] == ".5") {
        if (num > 0.0) {
            res = Int64(ceil(num))
        } else {
            res = Int64(floor(num))
        }
    } else if (value_.size > 0) {
        res = Int64(round(num))
    } else {
        res = 0
    }
    return res
}
