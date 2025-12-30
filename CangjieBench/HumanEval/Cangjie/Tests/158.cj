
main() {
    if (find_max(ArrayList<String>(["name", "of", "string"])) != "string") {
        throw Exception("Test Failed!")
    }
    if (find_max(ArrayList<String>(["name", "enam", "game"])) != "enam") {
        throw Exception("Test Failed!")
    }
    if (find_max(ArrayList<String>(["aaaaaaa", "bb", "cc"])) != "aaaaaaa") {
        throw Exception("Test Failed!")
    }
    if (find_max(ArrayList<String>(["abc", "cba"])) != "abc") {
        throw Exception("Test Failed!")
    }
    if (find_max(ArrayList<String>(["play", "this", "game", "of", "footbott"])) != "footbott") {
        throw Exception("Test Failed!")
    }
    if (find_max(ArrayList<String>(["we", "are", "gonna", "rock"])) != "gonna") {
        throw Exception("Test Failed!")
    }
    if (find_max(ArrayList<String>(["we", "are", "a", "mad", "nation"])) != "nation") {
        throw Exception("Test Failed!")
    }
    if (find_max(ArrayList<String>(["this", "is", "a", "prrk"])) != "this") {
        throw Exception("Test Failed!")
    }
    if (find_max(ArrayList<String>(["b"])) != "b") {
        throw Exception("Test Failed!")
    }
    if (find_max(ArrayList<String>(["play", "play", "play"])) != "play") {
        throw Exception("Test Failed!")
    }
}
