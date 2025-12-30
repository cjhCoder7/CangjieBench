import std.collection.ArrayList

func odd_count(lst: ArrayList<String>): ArrayList<String> {
    /*
    Given a list of strings, where each string consists of only digits, return a list.
    Each element i of the output should be "the number of odd elements in the
    string i of the input." where all the i's should be replaced by the number
    of odd digits in the i'th string of the input.

    >>> odd_count(ArrayList<String>(["1234567"]))
    ["the number of odd elements 4n the str4ng 4 of the 4nput."]
    >>> odd_count(ArrayList<String>(["3", "11111111"]))
    ["the number of odd elements 1n the str1ng 1 of the 1nput.",
     "the number of odd elements 8n the str8ng 8 of the 8nput."]
    */
    let res = ArrayList<String>()
    for (arr in lst) {
        var n = 0
        for (d in arr) {
            if ((d - 48) % 2 == 1) {
                n++
            }
        }
        res.add("the number of odd elements " + n.toString() + "n the str" + n.toString() + "ng " + n.toString() + " of the " + n.toString() + "nput.")
    }
    return res
}
