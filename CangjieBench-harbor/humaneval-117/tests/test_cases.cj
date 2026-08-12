import std.collection.ArrayList
import std.unicode.UnicodeStringExtension

main() {
    if (select_words("Mary had a little lamb", 4) != ArrayList<String>(["little"])) {
        throw Exception("Test Failed!")
    }
    if (select_words("Mary had a little lamb", 3) != ArrayList<String>(["Mary", "lamb"])) {
        throw Exception("Test Failed!")
    }
    if (select_words("simple white space", 2) != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
    if (select_words("Hello world", 4) != ArrayList<String>(["world"])) {
        throw Exception("Test Failed!")
    }
    if (select_words("Uncle sam", 3) != ArrayList<String>(["Uncle"])) {
        throw Exception("Test Failed!")
    }
    if (select_words("", 4) != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
    if (select_words("a b c d e f", 1) != ArrayList<String>(["b", "c", "d", "f"])) {
        throw Exception("Test Failed!")
    }
}
