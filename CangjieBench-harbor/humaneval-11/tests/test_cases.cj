main(){
    if (string_xor('111000', '101010') != '010010') {
        throw Exception("Test Failed!")
    }
    if (string_xor('1', '1') != '0') {
        throw Exception("Test Failed!")
    }
    if (string_xor('0101', '0000') != '0101') {
        throw Exception("Test Failed!")
    }
}
