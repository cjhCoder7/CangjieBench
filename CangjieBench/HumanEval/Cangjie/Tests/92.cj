
main(){
    if (any_int(2.0, 3.0, 1.0) != true) {
        throw Exception("Test Failed!")
    }
    if (any_int(2.5, 2.0, 3.0) != false) {
        throw Exception("Test Failed!")
    }
    if (any_int(1.5, 5.0, 3.5) != false) {
        throw Exception("Test Failed!")
    }
    if (any_int(2.0, 6.0, 2.0) != false) {
        throw Exception("Test Failed!")
    }
    if (any_int(4.0, 2.0, 2.0) != true) {
        throw Exception("Test Failed!")
    }
    if (any_int(2.2, 2.2, 2.2) != false) {
        throw Exception("Test Failed!")
    }
    if (any_int(-4.0, 6.0, 2.0) != true) {
        throw Exception("Test Failed!")
    }
    if (any_int(2.0, 1.0, 1.0) != true) {
        throw Exception("Test Failed!")
    }
    if (any_int(3.0, 4.0, 7.0) != true) {
        throw Exception("Test Failed!")
    }
    if (any_int(3.01, 4.0, 7.0) != false) {
        throw Exception("Test Failed!") 
    }
}