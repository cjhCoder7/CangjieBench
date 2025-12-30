import std.collection.HashSet
import std.unicode.UnicodeStringExtension

func count_distinct_characters(string: String): Int64 {
    /*
    Given a string, find out how many distinct characters (regardless of case) does it consist of
    >>> count_distinct_characters('xyzXYZ')
    3
    >>> count_distinct_characters('Jerry')
    4
    */
    let lower_string = string.toLower()
    let char_set = HashSet<Rune>()
    for (char in lower_string) {
        char_set.add(Rune(char))
    }
    return char_set.size
}
