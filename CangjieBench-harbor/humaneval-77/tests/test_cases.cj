import std.math.abs
import std.math.round

main(){
    if (iscube(1) != true) {
        throw Exception("Test Failed!")
    }
    if (iscube(2) != false) {
        throw Exception("Test Failed!")
    }
    if (iscube(-1) != true) {
        throw Exception("Test Failed!")
    }
    if (iscube(64) != true) {
        throw Exception("Test Failed!")
    }
    if (iscube(180) != false) {
        throw Exception("Test Failed!")
    }
    if (iscube(1000) != true) {
        throw Exception("Test Failed!")
    }
    if (iscube(0) != true) {
        throw Exception("Test Failed!")
    }
    if (iscube(1729) != false) {
        throw Exception("Test Failed!")
    }
}
