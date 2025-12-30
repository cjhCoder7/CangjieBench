func test_get_mode_1() {
    let t = Thermostat(20.0, 25.0, "heat")
    if (t.get_mode() != "heat") {
        throw Exception("Test failed!")
    }
}

func test_get_mode_2() {
    let t = Thermostat(20.0, 25.0, "cool")
    if (t.get_mode() != "cool") {
        throw Exception("Test failed!")
    }
}

func test_get_mode_3() {
    let t = Thermostat(20.0, 25.0, "test")
    if (t.get_mode() != "test") {
        throw Exception("Test failed!")
    }
}

func test_get_mode_4() {
    let t = Thermostat(25.0, 25.0, "cool")
    if (t.get_mode() != "cool") {
        throw Exception("Test failed!")
    }
}

func test_get_mode_5() {
    let t = Thermostat(25.0, 25.0, "heat")
    if (t.get_mode() != "heat") {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_mode_1()
    test_get_mode_2()
    test_get_mode_3()
    test_get_mode_4()
    test_get_mode_5()
}