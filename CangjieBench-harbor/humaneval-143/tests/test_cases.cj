import std.collection.ArrayList

main() {
    if (words_in_sentence("This is a test") != "is") {
        throw Exception("Test Failed!")
    }
    if (words_in_sentence("lets go for swimming") != "go for") {
        throw Exception("Test Failed!")
    }
    if (words_in_sentence("there is no place available here") != "there is no place") {
        throw Exception("Test Failed!")
    }
    if (words_in_sentence("Hi I am Hussein") != "Hi am Hussein") {
        throw Exception("Test Failed!")
    }
    if (words_in_sentence("go for it") != "go for it") {
        throw Exception("Test Failed!")
    }
    if (words_in_sentence("here") != "") {
        throw Exception("Test Failed!")
    }
    if (words_in_sentence("here is") != "is") {
        throw Exception("Test Failed!")
    }
}
