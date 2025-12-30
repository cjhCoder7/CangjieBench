import std.collection.ArrayList

func is_nested(string: String): Bool {
    /*
    Create a function that takes a string as input which contains only square brackets.
    The function should return true if and only if there is a valid subsequence of brackets 
    where at least one bracket in the subsequence is nested.

    is_nested('[[]]') ➞ true
    is_nested('[]]]]]]][[[[[]') ➞ false
    is_nested('[][]') ➞ false
    is_nested('[]') ➞ false
    is_nested('[[][]]') ➞ true
    is_nested('[[]][[') ➞ true
    */
    let opening_bracket_index = ArrayList<Int64>()
    let closing_bracket_index = ArrayList<Int64>()
    for (i in 0..string.size) {
        if (Rune(string[i]) == r'[') {
            opening_bracket_index.add(i)
        } else {
            closing_bracket_index.add(i)
        }
    }
    closing_bracket_index.reverse()
    var cnt = 0
    var i = 0
    let l = closing_bracket_index.size
    for (idx in opening_bracket_index) {
        if (i < l && idx < closing_bracket_index[i]) {
            cnt += 1
            i += 1
        }
    }
    return cnt >= 2
}
