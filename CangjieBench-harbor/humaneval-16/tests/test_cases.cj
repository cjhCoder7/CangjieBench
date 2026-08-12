import std.collection.HashSet
import std.unicode.UnicodeStringExtension

main(){
    if (count_distinct_characters('') != 0) {
        throw Exception("Test Failed!")
    }
    if (count_distinct_characters('abcde') != 5) {
        throw Exception("Test Failed!")
    }
    if (count_distinct_characters('abcde' + 'cade' + 'CADE') != 5) {
        throw Exception("Test Failed!")
    }
    if (count_distinct_characters('aaaaAAAAaaaa') != 1) {
        throw Exception("Test Failed!")
    }
    if (count_distinct_characters('Jerry jERRY JeRRRY') != 5) {
        throw Exception("Test Failed!")
    }
}
