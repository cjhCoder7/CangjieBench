
main() {
    if (solve("AsDf") != "aSdF") {
        throw Exception("Test Failed!")
    }
    if (solve("1234") != "4321") {
        throw Exception("Test Failed!")
    }
    if (solve("ab") != "AB") {
        throw Exception("Test Failed!")
    }
    if (solve("#a@C") != "#A@c") {
        throw Exception("Test Failed!")
    }
    if (solve("#AsdfW^45") != "#aSDFw^45") {
        throw Exception("Test Failed!")
    }
    if (solve("#6@2") != "2@6#") {
        throw Exception("Test Failed!")
    }
    if (solve("#$a^D") != "#$A^d") {
        throw Exception("Test Failed!")
    }
    if (solve("#ccc") != "#CCC") {
        throw Exception("Test Failed!")
    }
}
