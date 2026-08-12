import std.collection.HashSet

main(){
    if (same_chars("eabcdzzzz", "dddzzzzzzzddeddabc") != true) {
        throw Exception("Test Failed!")
    }
    if (same_chars("abcd", "dddddddabc") != true) {
        throw Exception("Test Failed!")
    }
    if (same_chars("dddddddabc", "abcd") != true) {
        throw Exception("Test Failed!")
    }
    if (same_chars("eabcd", "dddddddabc") != false) {
        throw Exception("Test Failed!")
    }
    if (same_chars("abcd", "dddddddabcf") != false) {
        throw Exception("Test Failed!")
    }
    if (same_chars("eabcdzzzz", "dddzzzzzzzddddabc") != false) {
        throw Exception("Test Failed!")
    }
    if (same_chars("aabb", "aaccc") != false) {
        throw Exception("Test Failed!")
    }
}
