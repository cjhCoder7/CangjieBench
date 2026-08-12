main(){
    if (string_sequence(0) != '0') {
        throw Exception("Test Failed!")
    }
    if (string_sequence(3) != '0 1 2 3') {
        throw Exception("Test Failed!")
    }
    if (string_sequence(10) != '0 1 2 3 4 5 6 7 8 9 10') {
        throw Exception("Test Failed!")
    }
}
