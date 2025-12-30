
main(){
    if (digitSum("") != 0) {
        throw Exception("Test Failed!")
    }
    if (digitSum("abAB") != 131) {
        throw Exception("Test Failed!")
    }
    if (digitSum("abcCd") != 67) {
        throw Exception("Test Failed!")
    }
    if (digitSum("helloE") != 69) {
        throw Exception("Test Failed!")
    }
    if (digitSum("woArBld") != 131) {
        throw Exception("Test Failed!")
    }
    if (digitSum("aAaaaXa") != 153) {
        throw Exception("Test Failed!")
    }
    if (digitSum(" How are yOu?") != 151) {
        throw Exception("Test Failed!")
    }
    if (digitSum("You arE Very Smart") != 327) {
        throw Exception("Test Failed!")
    }
}