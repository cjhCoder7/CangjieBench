
main(){
    if (remove_vowels("") != "") {
        throw Exception("Test Failed!")
    }
    if (remove_vowels("abcdef\nghijklm") != "bcdf\nghjklm") {
        throw Exception("Test Failed!")
    }
    if (remove_vowels("fedcba") != "fdcb") {
        throw Exception("Test Failed!")
    }
    if (remove_vowels("eeeee") != "") {
        throw Exception("Test Failed!")
    }
    if (remove_vowels("acBAA") != "cB") {
        throw Exception("Test Failed!")
    }
    if (remove_vowels("EcBOO") != "cB") {
        throw Exception("Test Failed!")
    }
    if (remove_vowels("ybcd") != "ybcd") {
        throw Exception("Test Failed!")
    }
}