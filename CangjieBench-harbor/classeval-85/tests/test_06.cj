import std.math.abs

func test_simulate_operation_1() {
    let t = Thermostat(20.0, 25.0, "heat")
    if (t.simulate_operation() != 5) {
        throw Exception("Test failed!")
    }
    if (t.get_mode() != "heat") {
        throw Exception("Test failed!")
    }
    if (t.current_temperature != 25.0) {
        throw Exception("Test failed!")
    }
}

func test_simulate_operation_2() {
    let t = Thermostat(25.7, 20.0, "cool")
    if (t.simulate_operation() != 6) {
        throw Exception("Test failed!")
    }
    if (t.get_mode() != "cool") {
        throw Exception("Test failed!")
    }
    if (abs(t.current_temperature - 19.7) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_simulate_operation_3() {
    let t = Thermostat(25.0, 25.0, "heat")
    if (t.simulate_operation() != 0) {
        throw Exception("Test failed!")
    }
    if (t.get_mode() != "cool") {
        throw Exception("Test failed!")
    }
    if (t.current_temperature != 25.0) {
        throw Exception("Test failed!")
    }
}

func test_simulate_operation_4() {
    let t = Thermostat(25.0, 25.0, "cool")
    if (t.simulate_operation() != 0) {
        throw Exception("Test failed!")
    }
    if (t.get_mode() != "cool") {
        throw Exception("Test failed!")
    }
    if (t.current_temperature != 25.0) {
        throw Exception("Test failed!")
    }
}

func test_simulate_operation_5() {
    let t = Thermostat(25.0, 25.0, "test")
    if (t.simulate_operation() != 0) {
        throw Exception("Test failed!")
    }
    if (t.get_mode() != "cool") {
        throw Exception("Test failed!")
    }
    if (t.current_temperature != 25.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_simulate_operation_1()
    test_simulate_operation_2()
    test_simulate_operation_3()
    test_simulate_operation_4()
    test_simulate_operation_5()
}
