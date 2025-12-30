func test_set_target_temperature_1() {
    let t = Thermostat(20.0, 25.0, "heat")
    t.set_target_temperature(30.0)
    if (t.get_target_temperature() != 30.0) {
        throw Exception("Test failed!")
    }
}

func test_set_target_temperature_2() {
    let t = Thermostat(20.0, 25.0, "cool")
    t.set_target_temperature(10.0)
    if (t.get_target_temperature() != 10.0) {
        throw Exception("Test failed!")
    }
}

func test_set_target_temperature_3() {
    let t = Thermostat(20.0, 25.0, "test")
    t.set_target_temperature(10.0)
    if (t.get_target_temperature() != 10.0) {
        throw Exception("Test failed!")
    }
}

func test_set_target_temperature_4() {
    let t = Thermostat(25.0, 25.0, "cool")
    t.set_target_temperature(10.0)
    if (t.get_target_temperature() != 10.0) {
        throw Exception("Test failed!")
    }
}

func test_set_target_temperature_5() {
    let t = Thermostat(25.0, 25.0, "heat")
    t.set_target_temperature(10.0)
    if (t.get_target_temperature() != 10.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_set_target_temperature_1()
    test_set_target_temperature_2()
    test_set_target_temperature_3()
    test_set_target_temperature_4()
    test_set_target_temperature_5()
}