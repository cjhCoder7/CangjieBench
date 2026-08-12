import std.collection.ArrayList

main(){
    if (fizz_buzz(50) != 0) {
        throw Exception("Test failed!")
    }
    if (fizz_buzz(78) != 2) {
        throw Exception("Test failed!")
    }
    if (fizz_buzz(79) != 3) {
        throw Exception("Test failed!")
    }
    if (fizz_buzz(100) != 3) {
        throw Exception("Test failed!")
    }
    if (fizz_buzz(200) != 6) {
        throw Exception("Test failed!")
    }
    if (fizz_buzz(4000) != 192) {
        throw Exception("Test failed!")
    }
    if (fizz_buzz(10000) != 639) {
        throw Exception("Test failed!")
    }
    if (fizz_buzz(100000) != 8026) {
        throw Exception("Test failed!")
    }
}
