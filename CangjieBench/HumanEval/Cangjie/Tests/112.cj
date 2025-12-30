
main() {
    if (reverse_delete("abcde", "ae") != ("bcd", false)) {
        throw Exception("Test Failed!")
    }
    if (reverse_delete("abcdef", "b") != ("acdef", false)) {
        throw Exception("Test Failed!")
    }
    if (reverse_delete("abcdedcba", "ab") != ("cdedc", true)) {
        throw Exception("Test Failed!")
    }
    if (reverse_delete("dwik", "w") != ("dik", false)) {
        throw Exception("Test Failed!")
    }
    if (reverse_delete("a", "a") != ("", true)) {
        throw Exception("Test Failed!")
    }
    if (reverse_delete("abcdedcba", "") != ("abcdedcba", true)) {
        throw Exception("Test Failed!")
    }
    if (reverse_delete("abcdedcba", "v") != ("abcdedcba", true)) {
        throw Exception("Test Failed!")
    }
    if (reverse_delete("vabba", "v") != ("abba", true)) {
        throw Exception("Test Failed!")
    }
    if (reverse_delete("mamma", "mia") != ("", true)) {
        throw Exception("Test Failed!")
    }
}