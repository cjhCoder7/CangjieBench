import std.convert.Formattable

main(){
    if (decimal_to_binary(0) != "db0db") {
        throw Exception("Test Failed!")
    }
    if (decimal_to_binary(32) != "db100000db") {
        throw Exception("Test Failed!")
    }
    if (decimal_to_binary(103) != "db1100111db") {
        throw Exception("Test Failed!")
    }
    if (decimal_to_binary(15) != "db1111db") {
        throw Exception("Test Failed!")
    }
}
