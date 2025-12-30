import std.collection.ArrayList

func filter_by_prefix(strings: ArrayList<String>, prefix: String): ArrayList<String> {
    /*
    Filter an input list of strings only for ones that start with a given prefix.
    >>> filter_by_prefix(ArrayList<String>([]), 'a')
    []
    >>> filter_by_prefix(ArrayList<String>(['abc', 'bcd', 'cde', 'array']), 'a')
    ['abc', 'array']
    */
    let result = ArrayList<String>()
    for (i in strings) {
        if (i.startsWith(prefix)) {
            result.add(i)
        }
    }
    return result
}
