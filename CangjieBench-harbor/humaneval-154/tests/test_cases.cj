main() {
    if (cycpattern_check("xyzw", "xyw") != false) {
        throw Exception("Test Failed!")
    }
    if (cycpattern_check("yello", "ell") != true) {
        throw Exception("Test Failed!")
    }
    if (cycpattern_check("whattup", "ptut") != false) {
        throw Exception("Test Failed!")
    }
    if (cycpattern_check("efef", "fee") != true) {
        throw Exception("Test Failed!")
    }
    if (cycpattern_check("abab", "aabb") != false) {
        throw Exception("Test Failed!")
    }
    if (cycpattern_check("winemtt", "tinem") != true) {
        throw Exception("Test Failed!")
    }
}
