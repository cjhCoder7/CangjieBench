import std.collection.ArrayList

func all_prefixes(string: String): ArrayList<String> {
    /*
    Return list of all prefixes from shortest to longest of the input string
    >>> all_prefixes('abc')
    ['a', 'ab', 'abc']
    */
    let result = ArrayList<String>()

    for (i in 0..string.size) {
        result.add(string[0..i+1])
    }
    return result
}
