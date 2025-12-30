import std.collection.ArrayList

func add(lst: ArrayList<Int64>): Int64 {
    /*
    Given a non-empty list of integers lst. add the even elements that are at odd indices..


    Examples:
        add(ArrayList<Int64>([4, 2, 6, 7])) ==> 2 
    */
    var sum = 0
    for (i in 1..lst.size:2) {
        if (lst[i] % 2 == 0) {
            sum += lst[i]
        }
    }
    return sum
}
