import std.collection.ArrayList

func parse_nested_parens(paren_string: String): ArrayList<Int64> {
    /*
    Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    For each of the group, output the deepest level of nesting of parentheses.
    E.g. (()()) has maximum two levels of nesting while ((())) has three.

    >>> parse_nested_parens('(()()) ((())) () ((())()())')
    [2, 3, 1, 3]
    */
    let result = ArrayList<Int64>([])
    let paren_groups = paren_string.split(' ')
    for (paren_group in paren_groups) {
        var max_depth = 0
        var current_depth = 0
        for (char in paren_group.toRuneArray()) {
            if (char == r'(') {
                current_depth++
                max_depth = max(max_depth, current_depth)
            } else if (char == r')') {
                current_depth--
            }
        }
        result.add(max_depth)
    }
    return result
}