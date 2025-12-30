
main() {
    if (split_words("Hello world!") != ArrayList<String>(["Hello", "world!"])) {
        throw Exception("Test Failed!")
    }
    if (split_words("Hello,world!") != ArrayList<String>(["Hello", "world!"])) {
        throw Exception("Test Failed!")
    }
    if (split_words("Hello world,!") != ArrayList<String>(["Hello", "world,!"])) {
        throw Exception("Test Failed!")
    }
    if (split_words("Hello,Hello,world !") != ArrayList<String>(["Hello,Hello,world", "!"])) {
        throw Exception("Test Failed!")
    }
    if (split_words("abcdef") != ArrayList<String>(["3"])) {
        throw Exception("Test Failed!")
    }
    if (split_words("aaabb") != ArrayList<String>(["2"])) {
        throw Exception("Test Failed!")
    }
    if (split_words("aaaBb") != ArrayList<String>(["1"])) {
        throw Exception("Test Failed!")
    }
    if (split_words("") != ArrayList<String>(["0"])) {
        throw Exception("Test Failed!")
    }
}
