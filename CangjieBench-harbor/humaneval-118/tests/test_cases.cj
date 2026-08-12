import std.unicode.UnicodeStringExtension

main() {
    if (get_closest_vowel("yogurt") != "u") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("full") != "u") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("easy") != "") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("eAsy") != "") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("ali") != "") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("bad") != "a") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("most") != "o") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("ab") != "") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("ba") != "") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("quick") != "") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("anime") != "i") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("Asia") != "") {
        throw Exception("Test Failed!")
    }
    if (get_closest_vowel("Above") != "o") {
        throw Exception("Test Failed!")
    }
}
