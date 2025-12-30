func test_auto_set_mode_1() {
    let t = Thermostat(20.0, 25.0, "heat")
    t.auto_set_mode()
    if (t.get_mode() != "heat") {
        throw Exception("Test failed!")
    }
}

func test_auto_set_mode_2() {
    let t = Thermostat(25.0, 20.0, "heat")
    t.auto_set_mode()
    if (t.get_mode() != "cool") {
        throw Exception("Test failed!")
    }
}

func test_auto_set_mode_3() {
    let t = Thermostat(25.0, 20.0, "cool")
    t.auto_set_mode()
    if (t.get_mode() != "cool") {
        throw Exception("Test failed!")
    }
}

func test_auto_set_mode_4() {
    let t = Thermostat(20.0, 25.0, "cool")
    t.auto_set_mode()
    if (t.get_mode() != "heat") {
        throw Exception("Test failed!")
    }
}

func test_auto_set_mode_5() {
    let t = Thermostat(25.0, 25.0, "cool")
    t.auto_set_mode()
    if (t.get_mode() != "cool") {
        throw Exception("Test failed!")
    }
}

main() {
    test_auto_set_mode_1()
    test_auto_set_mode_2()
    test_auto_set_mode_3()
    test_auto_set_mode_4()
    test_auto_set_mode_5()
}