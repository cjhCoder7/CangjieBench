main(){
    if (change_base(8, 3) != "22") {
        throw Exception("Test Failed!")
    }
    if (change_base(9, 3) != "100") {
        throw Exception("Test Failed!")
    }
    if (change_base(234, 2) != "11101010") {
        throw Exception("Test Failed!")
    }
    if (change_base(16, 2) != "10000") {
        throw Exception("Test Failed!")
    }
    if (change_base(8, 2) != "1000") {
        throw Exception("Test Failed!")
    }
    if (change_base(7, 2) != "111") {
        throw Exception("Test Failed!")
    }
    for (x in 2..8) {
        if (change_base(x, x + 1) != x.toString()) {
            throw Exception("Test Failed!")
        }
    }
}
