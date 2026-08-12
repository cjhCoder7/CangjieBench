main(){
    if (correct_bracketing("<>") != true) {
        throw Exception("Test Failed!")
    }
    if (correct_bracketing("<<><>>") != true) {
        throw Exception("Test Failed!")
    }
    if (correct_bracketing("<><><<><>><>") != true) {
        throw Exception("Test Failed!")
    }
    if (correct_bracketing("<><><<<><><>><>><<><><<>>>") != true) {
        throw Exception("Test Failed!")
    }
    if (correct_bracketing("<<<><>>>>") != false) {
        throw Exception("Test Failed!")
    }
    if (correct_bracketing("><<>") != false) {
        throw Exception("Test Failed!")
    }
    if (correct_bracketing("<") != false) {
        throw Exception("Test Failed!")
    }
    if (correct_bracketing("<<<<") != false) {
        throw Exception("Test Failed!")
    }
    if (correct_bracketing(">") != false) {
        throw Exception("Test Failed!")
    }
    if (correct_bracketing("<<>") != false) {
        throw Exception("Test Failed!")
    }
    if (correct_bracketing("<><><<><>><>><<>") != false) {
        throw Exception("Test Failed!")
    }
    if (correct_bracketing("<><><<><>><>>><>") != false) {
        throw Exception("Test Failed!")
    }
}
