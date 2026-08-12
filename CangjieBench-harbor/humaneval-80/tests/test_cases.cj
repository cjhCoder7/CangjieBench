main(){
    if (is_happy("a") != false) {
        throw Exception("Test Failed!")
    }
    if (is_happy("aa") != false) {
        throw Exception("Test Failed!")
    }
    if (is_happy("abcd") != true) {
        throw Exception("Test Failed!")
    }
    if (is_happy("aabb") != false) {
        throw Exception("Test Failed!")
    }
    if (is_happy("adb") != true) {
        throw Exception("Test Failed!")
    }
    if (is_happy("xyy") != false) {
        throw Exception("Test Failed!")
    }
    if (is_happy("iopaxpoi") != true) {
        throw Exception("Test Failed!")
    }
    if (is_happy("iopaxioi") != false) {
        throw Exception("Test Failed!")
    }
}
