import std.collection.ArrayList

main() {
    if (is_nested("[[]]") != true) {
        throw Exception("Test Failed!")
    }
    if (is_nested("[]]]]]]][[[[[]") != false) {
        throw Exception("Test Failed!")
    }
    if (is_nested("[][]") != false) {
        throw Exception("Test Failed!")
    }
    if (is_nested("[]") != false) {
        throw Exception("Test Failed!")
    }
    if (is_nested("[[[[]]]]") != true) {
        throw Exception("Test Failed!")
    }
    if (is_nested("[]]]]]]]]]]") != false) {
        throw Exception("Test Failed!")
    }
    if (is_nested("[][][[]]") != true) {
        throw Exception("Test Failed!")
    }
    if (is_nested("[[]") != false) {
        throw Exception("Test Failed!")
    }
    if (is_nested("[]]") != false) {
        throw Exception("Test Failed!")
    }
    if (is_nested("[[]][[") != true) {
        throw Exception("Test Failed!")
    }
    if (is_nested("[[][]]") != true) {
        throw Exception("Test Failed!")
    }
    if (is_nested("") != false) {
        throw Exception("Test Failed!")
    }
    if (is_nested("[[[[[[[") != false) {
        throw Exception("Test Failed!")
    }
    if (is_nested("]]]]]]]]") != false) {
        throw Exception("Test Failed!")
    }
}
