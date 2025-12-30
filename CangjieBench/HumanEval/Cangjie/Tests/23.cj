
main(){
    if (strlen("") != 0) {
        throw Exception("Test failed!")
    }
    if (strlen("x") != 1) {
        throw Exception("Test failed!")
    }
    if (strlen("asdasnakj") != 9) {
        throw Exception("Test failed!")
    }
}