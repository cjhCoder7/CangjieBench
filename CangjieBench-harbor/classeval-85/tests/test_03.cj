import std.math.abs

func test_set_mode_1() {
    let t = Thermostat(20.0, 25.0, "heat")
    t.set_mode("cool")
    if (t.get_mode() != "cool") {
        throw Exception("Test failed!")
    }
}

func test_set_mode_2() {
    let t = Thermostat(20.0, 25.0, "heat")
    let result = t.set_mode("test")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_set_mode_3() {
    let t = Thermostat(20.0, 25.0, "cool")
    t.set_mode("heat")
    if (t.get_mode() != "heat") {
        throw Exception("Test failed!")
    }
}

func test_set_mode_4() {
    let t = Thermostat(20.0, 25.0, "test")
    t.set_mode("heat")
    if (t.get_mode() != "heat") {
        throw Exception("Test failed!")
    }
}

func test_set_mode_5() {
    let t = Thermostat(25.0, 25.0, "cool")
    t.set_mode("heat")
    if (t.get_mode() != "heat") {
        throw Exception("Test failed!")
    }
}

main() {
    test_set_mode_1()
    test_set_mode_2()
    test_set_mode_3()
    test_set_mode_4()
    test_set_mode_5()
}
