main(){
    if (count_upper("aBCdEf") != 1) {
        throw Exception("Test Failed!")
    }
    if (count_upper("abcdefg") != 0) {
        throw Exception("Test Failed!")
    }
    if (count_upper("dBBE") != 0) {
        throw Exception("Test Failed!")
    }
    if (count_upper("B") != 0) {
        throw Exception("Test Failed!")
    }
    if (count_upper("U") != 1) {
        throw Exception("Test Failed!")
    }
    if (count_upper("") != 0) {
        throw Exception("Test Failed!")
    }
    if (count_upper("EEEE") != 2) {
        throw Exception("Test Failed!")
    }
}
