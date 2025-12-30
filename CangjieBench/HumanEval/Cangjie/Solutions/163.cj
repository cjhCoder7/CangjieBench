import std.collection.ArrayList

func generate_integers(a: Int64, b: Int64): ArrayList<Int64> {
    /*
    Given two positive integers a and b, return the even digits between a
    and b, in ascending order.

    For example:
    generate_integers(2, 8) => [2, 4, 6, 8]
    generate_integers(8, 2) => [2, 4, 6, 8]
    generate_integers(10, 14) => []
    */
    let lower = max(2, min(a, b))
    let upper = min(8, max(a, b))
    let result = ArrayList<Int64>()
    for (i in lower..upper+1) {
        if (i % 2 == 0) {
            result.add(i)
        }
    }
    return result
}
