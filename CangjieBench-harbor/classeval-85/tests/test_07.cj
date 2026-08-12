import std.math.abs

func test_main() {
    let t = Thermostat(20.0, 37.5, "cool")
    if (t.get_target_temperature() != 37.5) {
        throw Exception("Test failed!")
    }

    t.set_target_temperature(37.6)
    if (t.target_temperature != 37.6) {
        throw Exception("Test failed!")
    }

    if (t.get_mode() != "cool") {
        throw Exception("Test failed!")
    }
    if (t.set_mode("test") != false) {
        throw Exception("Test failed!")
    }

    if (t.auto_check_conflict() != false) {
        throw Exception("Test failed!")
    }
    if (t.get_mode() != "heat") {
        throw Exception("Test failed!")
    }
    if (t.simulate_operation() != 18) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
