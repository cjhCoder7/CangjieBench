main(){
    if (starts_one_ends(1) != 1) {
        throw Exception("Test Failed!")
    }
    if (starts_one_ends(2) != 18) {
        throw Exception("Test Failed!")
    }
    if (starts_one_ends(3) != 180) {
        throw Exception("Test Failed!")
    }
    if (starts_one_ends(4) != 1800) {
        throw Exception("Test Failed!")
    }
    if (starts_one_ends(5) != 18000) {
        throw Exception("Test Failed!")
    }
}
