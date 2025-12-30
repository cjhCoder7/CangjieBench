import std.math.fmod

func truncate_number(number: Float64): Float64 {
    /*
    Given a positive floating point number, it can be decomposed into
    and integer part (largest integer smaller than given number) and decimals
    (leftover part always smaller than 1).

    Return the decimal part of the number.
    >>> truncate_number(3.5)
    0.5
    */
    return fmod(number, 1.0)
}
