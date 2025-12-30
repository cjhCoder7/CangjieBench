
main(){
    if (prime_length("Hello") != true) {
        throw Exception("Test Failed!")
    }
    if (prime_length("abcdcba") != true) {
        throw Exception("Test Failed!")
    }
    if (prime_length("kittens") != true) {
        throw Exception("Test Failed!")
    }
    if (prime_length("orange") != false) {
        throw Exception("Test Failed!")
    }
    if (prime_length("wow") != true) {
        throw Exception("Test Failed!")
    }
    if (prime_length("world") != true) {
        throw Exception("Test Failed!")
    }
    if (prime_length("MadaM") != true) {
        throw Exception("Test Failed!")
    }
    if (prime_length("Wow") != true) {
        throw Exception("Test Failed!")
    }
    if (prime_length("") != false) {
        throw Exception("Test Failed!")
    }
    if (prime_length("HI") != true) {
        throw Exception("Test Failed!")
    }
    if (prime_length("go") != true) {
        throw Exception("Test Failed!")
    }
    if (prime_length("gogo") != false) {
        throw Exception("Test Failed!")
    }
    if (prime_length("aaaaaaaaaaaaaaa") != false) {
        throw Exception("Test Failed!")
    }
    if (prime_length("Madam") != true) {
        throw Exception("Test Failed!")
    }
    if (prime_length("M") != false) {
        throw Exception("Test Failed!")
    }
    if (prime_length("0") != false) {
        throw Exception("Test Failed!")
    }
}