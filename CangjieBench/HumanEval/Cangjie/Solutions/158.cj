import std.collection.ArrayList
import std.collection.HashSet
import std.sort.sort

func find_max(words: ArrayList<String>): String {
    /*
    Write a function that accepts a list of strings.
    The list contains different words. Return the word with maximum number
    of unique characters. If multiple strings have maximum number of unique
    characters, return the one which comes first in lexicographical order.

    find_max(ArrayList<String>(["name", "of", "string"])) == "string"
    find_max(ArrayList<String>(["name", "enam", "game"])) == "enam"
    find_max(ArrayList<String>(["aaaaaaa", "bb" ,"cc"])) == "aaaaaaa"
    */
    sort(
        words,
        lessThan: {
            a: String, b: String =>
            let a_set = HashSet<Rune>(a.toRuneArray())
            let b_set = HashSet<Rune>(b.toRuneArray())
            if (a_set.size > b_set.size) {
                return true
            } else if (a_set.size == b_set.size) {
                return a < b
            } else {
                return false
            }
        }
    )
    return words[0]
}
