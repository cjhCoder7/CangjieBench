main(){
    if (vowels_count("abcde") != 2) {
        throw Exception("Test Failed!")
    }
    if (vowels_count("Alone") != 3) {
        throw Exception("Test Failed!")
    }
    if (vowels_count("key") != 2) {
        throw Exception("Test Failed!")
    }
    if (vowels_count("bye") != 1) {
        throw Exception("Test Failed!")
    }
    if (vowels_count("keY") != 2) {
        throw Exception("Test Failed!")
    }
    if (vowels_count("bYe") != 1) {
        throw Exception("Test Failed!")
    }
    if (vowels_count("ACEDY") != 3) {
        throw Exception("Test Failed!")
    }
}
