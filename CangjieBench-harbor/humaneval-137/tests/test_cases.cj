import std.convert.Parsable

main() {
    if ((compare_one(1, 2) as Int64) != 2) {
        throw Exception("Test Failed!")
    }
    if ((compare_one(1, 2.5) as Float64) != 2.5) {
        throw Exception("Test Failed!")
    }
    if ((compare_one(2, 3) as Int64) != 3) {
        throw Exception("Test Failed!")
    }
    if ((compare_one(5, 6) as Int64) != 6) {
        throw Exception("Test Failed!")
    }
    if ((compare_one(1, "2,3") as String) != "2,3") {
        throw Exception("Test Failed!")
    }
    if ((compare_one("5,1", "6") as String) != "6") {
        throw Exception("Test Failed!")
    }
    if ((compare_one("1", "2") as String) != "2") {
        throw Exception("Test Failed!")
    }
    if ((compare_one("1", 1) as String) != "None") {
        throw Exception("Test Failed!")
    }
}
