import std.collection.ArrayList

func separate_paren_groups(paren_string: String): ArrayList<String> {
    /*
    Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
    separate those group into separate strings and return the list of those.
    Separate groups are balanced (each open brace is properly closed) and not nested within each other
    Ignore any spaces in the input string.
    >>> separate_paren_groups('( ) (( )) (( )( ))')
    ['()', '(())', '(()())']
    */
    let result = ArrayList<String>()
    let current_string = ArrayList<Rune>()
    var current_depth = 0

    for (c in paren_string.toRuneArray()) {
        if (c == r'(') {
            current_depth++
            current_string.add(c)
        } else if (c == r')') {
            current_depth--
            current_string.add(c)

            if (current_depth == 0) {
                var temp_string = ''
                for (r in current_string) {
                    temp_string += r.toString()
                }
                result.add(temp_string)
                current_string.clear()
            }
        }
    }
    return result
}