import std.collection.ArrayList

func longest(strings: ArrayList<String>): Option<String> {
    /*
    Out of list of strings, return the longest one. Return the first one in case of multiple
    strings of the same length. Return None in case the input list is empty.
    >>> longest(ArrayList<String>())
    None
    >>> longest(ArrayList<String>(['a', 'b', 'c']))
    'a'
    >>> longest(ArrayList<String>(['a', 'bb', 'ccc']))
    'ccc'
    */
    if (strings.size == 0) {
        return None
    }
    var result = strings[0]
    for (i in 0..strings.size) {
        if (strings[i].size > result.size) {
            result = strings[i]
        }
    }
    return result
}
