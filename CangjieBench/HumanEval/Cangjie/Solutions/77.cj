import std.math.abs
import std.math.round

func iscube(a: Int64): Bool {
    /*
    Write a function that takes an integer a and returns true 
    if this ingeger is a cube of some integer number.
    Note: you may assume the input is always valid.
    Examples:
    iscube(1) ==> true
    iscube(2) ==> false
    iscube(-1) ==> true
    iscube(64) ==> true
    iscube(0) ==> true
    iscube(180) ==> false
    */
    let a_ = abs(a)
    return Int64(round(Float64(a_) ** (1.0 / 3.0))) ** 3 == a_
}
