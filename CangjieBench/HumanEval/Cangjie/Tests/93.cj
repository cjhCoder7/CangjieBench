
main(){
    if (encode("TEST") != "tgst") {
        throw Exception("Test Failed!")
    }
    if (encode("Mudasir") != "mWDCSKR") {
        throw Exception("Test Failed!")
    }
    if (encode("YES") != "ygs") {
        throw Exception("Test Failed!")
    }
    if (encode("This is a message") != "tHKS KS C MGSSCGG") {
        throw Exception("Test Failed!")
    }
    if (encode("I DoNt KnOw WhAt tO WrItE") != "k dQnT kNqW wHcT Tq wRkTg") {
        throw Exception("Test Failed!")
    }
}