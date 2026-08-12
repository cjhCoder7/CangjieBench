import std.math.numeric.Decimal
import std.math.ceil
import std.math.floor
import std.math.round

main(){
    if (closest_integer("10") != 10) {
        throw Exception("Test Failed!")
    }
    if (closest_integer("14.5") != 15) {
        throw Exception("Test Failed!")
    }
    if (closest_integer("-15.5") != -16) {
        throw Exception("Test Failed!")
    }
    if (closest_integer("15.3") != 15) {
        throw Exception("Test Failed!")
    }
    if (closest_integer("0") != 0) {
        throw Exception("Test Failed!")
    }
}
