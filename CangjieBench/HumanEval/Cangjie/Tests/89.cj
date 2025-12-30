
main(){
    if (encrypt("hi") != "lm") {
        throw Exception("Test Failed!")
    }
    if (encrypt("asdfghjkl") != "ewhjklnop") {
        throw Exception("Test Failed!")
    }
    if (encrypt("gf") != "kj") {
        throw Exception("Test Failed!")
    }
    if (encrypt("et") != "ix") {
        throw Exception("Test Failed!")
    }
    if (encrypt("faewfawefaewg") != "jeiajeaijeiak") {
        throw Exception("Test Failed!")
    }
    if (encrypt("hellomyfriend") != "lippsqcjvmirh") {
        throw Exception("Test Failed!")
    }
    if (encrypt("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh") != "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl") {
        throw Exception("Test Failed!")
    }
    if (encrypt("a") != "e") {
        throw Exception("Test Failed!")
    }
}
