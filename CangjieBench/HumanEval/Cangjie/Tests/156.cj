
main() {
    if (int_to_mini_roman(19) != "xix") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(152) != "clii") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(251) != "ccli") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(426) != "cdxxvi") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(500) != "d") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(1) != "i") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(4) != "iv") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(43) != "xliii") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(90) != "xc") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(94) != "xciv") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(532) != "dxxxii") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(900) != "cm") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(994) != "cmxciv") {
        throw Exception("Test Failed!")
    }
    if (int_to_mini_roman(1000) != "m") {
        throw Exception("Test Failed!")
    }
}
