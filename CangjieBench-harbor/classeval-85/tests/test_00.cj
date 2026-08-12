import std.math.abs

func test_get_target_temperature_1() {
    let t = Thermostat(20.0, 25.0, "heat")
    if (t.get_target_temperature() != 25.0) {
        throw Exception("Test failed!")
    }
}

func test_get_target_temperature_2() {
    let t = Thermostat(20.0, 25.0, "cool")
    if (t.get_target_temperature() != 25.0) {
        throw Exception("Test failed!")
    }
}

func test_get_target_temperature_3() {
    let t = Thermostat(20.0, 25.0, "test")
    if (t.get_target_temperature() != 25.0) {
        throw Exception("Test failed!")
    }
}

func test_get_target_temperature_4() {
    let t = Thermostat(25.0, 25.0, "cool")
    if (t.get_target_temperature() != 25.0) {
        throw Exception("Test failed!")
    }
}

func test_get_target_temperature_5() {
    let t = Thermostat(25.0, 25.0, "heat")
    if (t.get_target_temperature() != 25.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_target_temperature_1()
    test_get_target_temperature_2()
    test_get_target_temperature_3()
    test_get_target_temperature_4()
    test_get_target_temperature_5()
}
