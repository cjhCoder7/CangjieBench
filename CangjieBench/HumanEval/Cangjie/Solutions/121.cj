import std.collection.ArrayList

func solution(lst: ArrayList<Int64>): Int64 {
    /*
    Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
    

    Examples
    solution(ArrayList<Int64>([5, 8, 7, 1])) ==> 12
    solution(ArrayList<Int64>([3, 3, 3, 3, 3])) ==> 9
    solution(ArrayList<Int64>([30, 13, 24, 321])) ==>0
    */
    var sum = 0
    for (idx in 0..lst.size) {
        if (idx % 2 == 0 && lst[idx] % 2 == 1) {
            sum += lst[idx]
        }
    }
    return sum
}
