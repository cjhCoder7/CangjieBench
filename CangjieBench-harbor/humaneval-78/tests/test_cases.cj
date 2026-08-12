main(){
    if (hex_key("AB") != 1) {
        throw Exception("Test Failed!")
    }
    if (hex_key("1077E") != 2) {
        throw Exception("Test Failed!")
    }
    if (hex_key("ABED1A33") != 4) {
        throw Exception("Test Failed!")
    }
    if (hex_key("2020") != 2) {
        throw Exception("Test Failed!")
    }
    if (hex_key("123456789ABCDEF0") != 6) {
        throw Exception("Test Failed!")
    }
    if (hex_key("112233445566778899AABBCCDDEEFF00") != 12) {
        throw Exception("Test Failed!")
    }
    if (hex_key("") != 0) {
        throw Exception("Test Failed!")
    }
}
